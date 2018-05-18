library(rdflib)

prefixes <- 
"
PREFIX dc: <http://purl.org/dc/terms/>
PREFIX dcterms: <http://purl.org/dc/terms/>
PREFIX foaf: <http://xmlns.com/foaf/0.1/>
PREFIX gr: <http://purl.org/goodrelations/v1#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX schema: <http://schema.org/>
PREFIX void: <http://rdfs.org/ns/void#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
"

schema <- rdf_parse("data-raw/schema.jsonld")


## List all classes!
q <- "
SELECT ?class ?inherits
WHERE { 
  ?o a rdfs:Class . 
  ?o rdfs:label ?class .
  ?o rdfs:subClassOf ?x .
  ?x rdfs:label ?inherits
}
"

classes <- rdf_query(schema, paste0(prefixes,q))

## Schema.org has 624 classes; deepest inheritance is depth 5

full_classes <- classes %>% 
  left_join(classes, by = c(inherits = "class")) %>% 
  left_join(classes, by = c(inherits.y = "class")) %>% 
  left_join(classes, by = c(inherits.y.y = "class")) %>% 
  left_join(classes, by = c(inherits = "class")) %>% 
  left_join(classes, by = c(inherits.y.y.y = "class"))

## Prove we have fully descended the tree  
full_classes %>% filter(!is.na(inherits.y.y.y.y))
full_classes <- full_classes[1:6]
names(full_classes) <- c("class", "inherits", "inherits.2", "inherits.3", "inherits.4", "inherits.5")
classes <- full_classes



classes %>% filter(class == "Dataset")
## Get me all valid properties of a class
# all those properties with "schema:domainIncludes": {"@id": "schema:Classlabel"} 

q <- "
SELECT ?class ?property ?type ?description
WHERE { 
?o a rdf:Property .
?o rdfs:label ?property .
?o rdfs:comment ?description .
?o schema:domainIncludes ?domain .
?domain a rdfs:Class .
?domain rdfs:label ?class .
?o schema:rangeIncludes ?range .
?range rdfs:label ?type
}
"
properties <- rdf_query(schema, paste0(prefixes,q))

readr::write_tsv(properties, "data-raw/properties.tsv")
readr::write_tsv(classes, "data-raw/classes.tsv")

schema_defs <- list(classes = classes, properties = properties)
devtools::use_data(schema_defs, internal = TRUE)

rdf_free(schema)
####


#components

# schema.org has only: 1,764 Properties?

#library(jqr)
#library(jsonlite)
#jsonschema <- readLines("data-raw/schema.jsonld")
#all_classes <- jq(schema, '.["@type"] = "rdfs:Class"')
# all_classes %>% jq('.["@id"]') #NOPE
#what are valid properties for the class?
# all those properties with "domainIncludes": {"@id": "schema:Classlabel"} 

