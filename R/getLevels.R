#' Get levels from Statistics Sweden API node (Function is depricated)
#'
#' Function is depricated, please use  \code{\link{get_pxweb_levels}} instead.
#' 
#' @param baseURL URL to get levels in the API for.
#' @param descriptions Whether to include node descriptions with the list of node IDs. (default: \code{FALSE})
#' @param quiet Quiet mode. Whether to stop with an error if the input node does not contain any subnodes. If set to \code{TRUE}, the function will quietly return FALSE without any errors. (default: \code{FALSE})
#' @param ... further argument to send to \code{get_pxweb_metadata()}
#' @export

scbGetLevels <- function(baseURL, descriptions = FALSE, quiet = FALSE, ...)
) {
  warning("Function is depricated, please use  get_pxweb_levels() instead.")
  get_pxweb_levels(baseURL = baseURL, descriptions = descriptions, quiet = quiet,...)
}


