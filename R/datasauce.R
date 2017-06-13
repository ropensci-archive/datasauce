#' datasauce
#' 
#' create a datasauce object
#' 
#' @importFrom jsonlite write_json
datasauce <- function(){
  obj <- list()
  class(obj) <- "datasauce"
  obj
}