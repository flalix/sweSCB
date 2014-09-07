#' Get metadata (Function is depricated)
#' 
#' Function is depricated, please use get_pxweb_metadata() instead.
#' 
#' @param path URL to fetch metadata from. If left empty, the function constructs a URL from the \code{node} and \code{topnodes} arguments
#' @param node A string with the name of the node to fetch. This is ignored if \code{path} is supplied.
#' @param topnodes A string or list of strings with the names of the parent nodes of \code{node}. This is ignored if \code{path} is supplied.
#' @param quiet Quiet mode (never return a message to the user)
#' @param ... Further arguments passed to  \code{\link{base_url}()}.
#' @export

scbGetMetadata <- function(path = NULL, node = NULL, topnodes = NULL, quiet = TRUE, ...) {
  warning("Function is depricated, please use get_pxweb_metadata() instead.")
  get_pxweb_metadata(path = path, node = node, topnodes = topnodes, quiet = quiet, baseURL = baseURL, ...)
}
