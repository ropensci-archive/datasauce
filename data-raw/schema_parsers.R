library(dplyr)
library(readr)

schema_defs <- list(classes = readr::read_tsv("data-raw/classes.tsv"),
                    properties = readr::read_tsv("data-raw/properties.tsv"))

get_schema <- function(object_type,
                       classes = schema_defs$classes,
                       properties = schema_defs$properties){
  inheritance <- dplyr::filter(classes, class %in% object_type)[1,]
  if(all(is.na(inheritance)))
    inheritance <- object_type
  df <- dplyr::filter(properties, class %in% inheritance)
  dplyr::arrange(df, class)
}



safe_txt <- function(x){
  x <- gsub("\\\\n", "", x)
  x <- gsub("\\n", "", x)
  x <- gsub("\n", "", x)
  x <- gsub("\\\\", "", x)
  x
}


function_constructor <- function(type) {
  df <- get_schema(type) %>% select(property,description,accepted_types) %>% distinct()

  ## fixme: return NULL if df$property is length zero
  args <- df$property
  if(length(args) == 0)
    return(NULL)

  local_classes <- schema_defs$classes[schema_defs$classes$class %in% type, ]

  docs <-
    paste0(
      paste("#'", type, "\n#'\n#'",
            safe_txt(local_classes$description), "\n#'\n#'\n"),
      paste("#' @param id identifier for the object (URI)\n"),
      paste0("#' @param ", df$property,
            " (", df$accepted_types, " type.) ",
            safe_txt(df$description), collapse = "\n"),
      paste0("\n#'\n#' @return a list object corresponding to a schema:", type),
      paste0("\n#'\n#' @export\n"),
      collaspe = "\n")

  f <- paste0(
    type,
    " <- function(",
    paste("id = NULL,\n"),
    paste(args, "=", "NULL", collapse = ",\n "),
    "){ \nFilter(Negate(is.null),\n list(\n",
    paste0("type = \"", type, "\",\n"),
    paste0("id = id", ",\n"),
    paste(args, "=", args, collapse = ",\n"),
    "))}"
  )

  readr::write_lines(paste(docs, f, collapse="\n"),
                     file.path("R", paste0(type, ".R")))


}
