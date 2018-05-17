## Read in ALL schema.org definitions as JSON-LD

library(xslt)
library(xml2)
library(rdflib)
library(jsonlite)

# https://github.com/apache/any23/raw/master/core/src/main/resources/org/apache/any23/extractor/rdfa/rdfa.xslt
# https://raw.githubusercontent.com/ropensci/RNeXML/master/inst/examples/RDFa2RDFXML.xsl

# https://raw.githubusercontent.com/schemaorg/schemaorg/master/data/schema.rdfa

rdf <- xslt::xml_xslt(read_xml("https://raw.githubusercontent.com/schemaorg/schemaorg/master/data/schema.rdfa"), 
                      read_xml("https://github.com/apache/any23/raw/master/core/src/main/resources/org/apache/any23/extractor/rdfa/rdfa.xslt"))


#stylesheet <- read_xml("data-raw/rdfa.xslt")
stylesheet <- read_xml("data-raw/RDFa2RDFXML.xsl")
## Hmmm... why no triples?
rdf <- xslt::xml_xslt(read_xml("data-raw/schema.rdfa"), 
                      stylesheet)
write_xml(rdf, "schema.rdf")

schema <- rdflib::rdf_parse("schema.rdf")
rdf_serialize(schema, "schema.json")
