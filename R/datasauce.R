##' Create a validator that can validate json files.
##' 
##' @title Create a json validator
##' @param schema Contents of the json schema, or a filename
##'   containing a schema
##' @export

data_validate <- function(json){
    v <- jsonvalidate::json_validate(json, schema.json)
    v('{}', error = TRUE)}
                  
