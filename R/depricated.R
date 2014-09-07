#' Get levels from Statistics Sweden API node (Function is depricated)
#'
#' Function is depricated, please use  \code{\link{get_pxweb_levels}} instead.
#' 
#' @param baseURL URL to get levels in the API for.
#' @param descriptions Whether to include node descriptions with the list of node IDs. (default: \code{FALSE})
#' @param quiet Quiet mode. Whether to stop with an error if the input node does not contain any subnodes. If set to \code{TRUE}, the function will quietly return FALSE without any errors. (default: \code{FALSE})
#' @param ... further argument to send to \code{get_pxweb_metadata()}
#' @export

scbGetLevels <- function(baseURL, descriptions = FALSE, quiet = FALSE, ...){
    warning("Function is depricated, please use get_pxweb_levels() instead.")
    get_pxweb_levels(baseURL = baseURL, descriptions = descriptions, quiet = quiet,...)
  }

#' Get metadata (Function is depricated)
#' 
#' Function is depricated, please use \code{\link{get_pxweb_metadata}()} instead.
#' 
#' @param path URL to fetch metadata from. If left empty, the function constructs a URL from the \code{node} and \code{topnodes} arguments
#' @param node A string with the name of the node to fetch. This is ignored if \code{path} is supplied.
#' @param topnodes A string or list of strings with the names of the parent nodes of \code{node}. This is ignored if \code{path} is supplied.
#' @param quiet Quiet mode (never return a message to the user)
#' @param ... Further arguments passed to  \code{\link{base_url}()}.
#' @export

scbGetMetadata <- function(path = NULL, node = NULL, topnodes = NULL, quiet = TRUE, ...) {
  warning("Function scbGetMetadata() is depricated, please use get_pxweb_metadata() instead.")
  get_pxweb_metadata(path = path, node = node, topnodes = topnodes, quiet = quiet, baseURL = base_url("api.scb.se", "v1", "sv"), ...)
}


#' Get data dimensions form a bottom node in SCB API (Function is depricated)
#' 
#' Function is depricated. Please use \code{\link{get_pxweb_dims}} instead.
#' 
#' @param node Bottom node to deparse into object
#' @param verbose Verbose output mode.
#' @seealso \code{\link{get_pxweb_metadata}}
#' @export

scbGetDims <- function(node, verbose=TRUE) {
  warning("Function scbGetDims() is depricated. Please use get_pxweb_dims() instead. \nAPI parameters for Statistics Sweden can found with scb_api_parameters().")
  get_pxweb_dims(node=node, verbose=verbose)
}


#' Get data from a bottom node in SCB API (Function is depricated)
#' 
#' Function is depricated. Please use \link{\code{get_pxweb_data}} instead. To get api parameters, use \code{\link{scb_api_parameters}}.
#'  
#' @param url URL to get data from (it is usually sufficient to submit the base URL, supplied via the \code{\link{base_url}} function, and the name of the variable).
#' @param dims A list of dimensional parameters to filter data by. Note that values \emph{must} be submitted for all dimensions of the data. If you don't want to filter data, submit an asterisk in quotation marks ("*") instead of values for that dimension.
#' @param clean Clean and melt the data to R format.
#' 
#' @seealso
#' \code{\link{get_pxweb_metadata}}, \code{\link{get_pxweb_dims}}, \code{\link{get_pxweb_levels}}
#' 
#' @export
#' 

scbGetData <- function(url, dims, clean = FALSE) {
  warning("Function scbGetData() is depricated. Please use get_pxweb_data() instead. \nAPI parameters for Statistics Sweden can found with scb_api_parameters().")
  get_pxweb_data(url=url, dims = dims, clean = clean)
}


#' Return base URL to SCB API (Function is depricated)
#' 
#' Function is depricated, please use \code{\link{base_url}()} instead.
#' 
#' @param version The version of SCB API to use. (Default: \code{v1})
#' @param lang The language (two letters) to use in the fetched data. (Default: \code{sv})
#' @param ... Additional parameters. These are currently ignored.
#' @export
baseURL <- function(version="v1", lang="sv", ...) {
  warning("Function  baseURL() is depricated, please use base_url() instead.")
  base_url(api = "api.scb.se", version = version, lang = lang, ...)
}



#' @title Find and download data from SCB (Function is depricated)
#'
#' @description Function is depricated, please use \link{find_scb_data} instead.
#' 
#' @param history keep the history when the function is running.
#' @param ... further parameters. These are currently ignored.
#' 
#' @export
#' 

findData <- function(history = FALSE, ...){
  warning("Function findData() is depricated. Use find_scb_data() instead.", call. = FALSE)
  
  find_scb_data(history = history, ...)
  
}

