
#classes <- readr::read_tsv(system.file("data/classes.tsv", package="datasauce"))
#properties <- readr::read_tsv("data/properties.tsv", package="datasauce")

## schema_defs 

get_classes <- function(){
  schema_defs$classes
}


get_properties <- function(){
  schema_defs$properties
}


get_schema <- function(object_type){
  inheritance <- dplyr::filter(schema_defs$classes, class %in% object_type)[1,]
  if(all(is.na(inheritance)))
    inheritance <- object_type
  df <- dplyr::filter(schema_defs$properties, class %in% inheritance)
  dplyr::arrange(df, class)
}

get_schemas <- function(object_type){
  
  ex <- get_schema(object_type)
  out <- setNames(list(ex), object_type)
  
  types <- unique(ex$type)
  components <- lapply(types, get_schema)
  names(components) <- types
  
  drop <- vapply(components, function(x) dim(x)[[1]] == 0, logical(1))
  c(out, components[-drop])
}


#dataset <- get_schemas("Dataset")
## Create function definitions

# Thing <- template_constructor("Thing")
template_constructor <- function(type){
  df <- get_schema(type)
  args <- unique(df$property)
  f <- paste0("function(",
              paste(args, "=", "NULL", collapse = ", "),
              "){ Filter(Negate(is.null), list(",
              paste(args, "=", args, collapse = ","),
              "))}")
  ## tidyf <- formatR::tidy_source(text=f, width.cutoff =80)
  ## writeLines(tidyf, "R/constructors.R", append=TRUE)
  
  eval(parse(text = f))
}


