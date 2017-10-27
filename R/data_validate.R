#' Create a json validator for dataset.
#'
#' \code{data_validate} returns whether a json is valid for dataset.
#'
#' @param ... json.
#' @return If a json is valid for dataset, then the output will be TRUE; otherwise, the output will be FALSE with warnings.
#' @usage with (datasauce)
data_validate <- function(json){
    schema <- system.file("extdata/schema.json", package = "datasauce")
    jsonvalidate::json_validate(json, schema, verbose = TRUE)
    }
                  
