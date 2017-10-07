##' Create a validator that can validate json files.
##' 
##' @title Create a json validator
##' @param schema Contents of the json schema, or a filename
##'   containing a schema
##' @export
data_validate <- function(schema){
  out <- tryCatch(json_validate(schema, schema), error = function(e) e)
  !any(class(out) == "error")}
                  
