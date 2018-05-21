## get_schema defined in R/ currently
## schema_defs created by parse_schema_json.R as sysdata.R

library(dplyr)
library(readr)

## helper functions
source("data-raw/schema_parsers.R")

who <- schema_defs$classes$class
targets <- who [!who %in% c("Text", "URL", "Integer",
                            "Boolean", "Number", "Date",
                            "DateTime", "DataType")]
#out <- lapply(targets, function_constructor)

function_constructor("Thing")
function_constructor("CreativeWork")
function_constructor("Dataset")
## overwrite write_json.ld.R
fs::file_copy("data-raw/write_jsonld.R", "R/write_jsonld.R", TRUE)



#' @importFrom stats setNames
get_schemas <- function(object_type){

  ex <- get_schema(object_type)
  out <- setNames(list(ex), object_type)

  types <- unique(ex$type)
  components <- lapply(types, get_schema)
  names(components) <- types

  drop <- vapply(components, function(x) dim(x)[[1]] == 0, logical(1))
  c(out, components[-drop])
}

ex <- names(get_schemas("Dataset"))
ex2 <- unique(unlist(lapply(lapply(ex, get_schemas),names)))
ex3 <- unique(unlist(lapply(lapply(ex2, get_schemas),names)))
ex4 <- unique(unlist(lapply(lapply(ex3, get_schemas),names)))
ex5 <- unique(unlist(lapply(lapply(ex4, get_schemas),names)))
ex6 <- unique(unlist(lapply(lapply(ex5, get_schemas),names)))

## No new classes, recursion done!
length( unique(c(ex, ex2, ex3, ex4, ex5) ) )
out <- unique(c(ex, ex2, ex3, ex4, ex5, ex6))
length(out)


sink <- lapply(out, function_constructor)
devtools::document()





