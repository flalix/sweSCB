#' Get data dimensions form a bottom node in SCB API (Function is depricated)
#' 
#' Function is depricated. Please use \code{\link{get_pxweb_dims}} instead.
#' 
#' @param node Bottom node to deparse into object
#' @param verbose Verbose output mode.
#' @seealso \code{\link{get_pxweb_metadata}}
#' @export


scbGetDims <- function(node, verbose=TRUE) {
  warning("scbGetDims() is depricated. Please use get_pxweb_dims() instead. \nAPI parameters for Statistics Sweden can found with scb_api_parameters().")
  get_pxweb_dims(node=node, verbose=verbose)
}

