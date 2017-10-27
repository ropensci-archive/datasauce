\name{data_validate}
\alias{data_validate}
\alias{datasauce}
\title{Create a json validator for dataset.}
\description{\code{data_validate} returns whether a json is valid for dataset.}
\usage{data_validate(json)}

data_validate <- function(json){
    schema <- system.file("extdata/schema.json", package = "datasauce")
    jsonvalidate::json_validate(json, schema, verbose = TRUE)
    }
                  
