data_validate <- function(json){
    schema <- system.file("extdata/schema.json", package = "datasauce")
    jsonvalidate::json_validate(json, schema, verbose = TRUE)
    }
                  
