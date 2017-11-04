#' Validate json for dataset
#'
#' Validate a json useing Google's Structured Data format.
#'
#' @export \dontrun{
#' data_validate(json)
#' }
#' @name data_validate
#' @param json a json file

data_validate <- function(json){
    schema <- system.file("extdata/schema.json", package = "datasauce")
    jsonvalidate::json_validate(json, schema, verbose = TRUE)
    }
                  
