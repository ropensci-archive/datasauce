##' Create a validator that can validate json files.
##' 
##' @title Create a json validator
##' @param schema Contents of the json schema, or a filename
##'   containing a schema
##' @export

data_validate <- function(json){
    schema <- 
      '{  
        "$schema": "http://schema.org/Dataset",
        "type": "object",
        "properties" : {
          "name" : { 
            "type": "string",
            "description": "A descriptive name of a dataset"
          },
          "description" : { 
            "type": "string",
            "description": "A short summary describing a dataset"
          },
          "url": {
            "type": "string",
            "description": "Location of a page describing the dataset"
          },
          "sameAs": {
            "type": "string",
            "description": "Other URLs that can be used to access the dataset page"
          },
          "version": {
            "type": "string",
            "description": "The version number for this dataset"
          },
          "keywords": {
            "type": "string",
            "description": "Keywords summarizing the dataset"
          },
          "variableMeasured": {
            "type": "string",
            "description": "What does the dataset measure"
          },
          "license": {
            "type": "string",
            "description": "A license under which the dataset is distributed" 
          },
          "identifier": {
            "type": "string",
            "description": "An identifier for the dataset"
          },
          "includedInDataCatalog": {
            "type": "string",
            "description": "The catalog to which this dataset belongs to"
          },
          "distribution": {
            "type": "string",
            "description":"A downloadable form of this dataset, at a specific location, in a specific format"
          },
          "distribution.fileFormat": {
            "type": "string",
            "description": "The file format of this distribution"
          },
          "distribution.contentUrl": {
            "type": "string",
            "description": "The link for the download"
          },
          "citation": {
            "type": "string",
            "description": "A citation for a publication that describes the dataset"
          }
        }
      }'
    v <- jsonvalidate::json_validate(json, schema)
    v('{}', error = TRUE)}
                  
