##' Create a validator that can validate json files.
##' 
##' @title Create a json validator
##' @param schema Contents of the json schema, or a filename
##'   containing a schema
##' @export

data_validate <- function(json){
    schema <- system.file("extdata/schema.json", package = "datasauce")
    jsonvalidate::json_validate(json, schema, verbose = TRUE)
    }
                  
