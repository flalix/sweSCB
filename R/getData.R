#' Get data from a bottom node in SCB API (Function is depricated)
#' 
#' This function fetches actual data (i.e. values) from the SCB web API. 
#' 
#' @param url URL to get data from (it is usually sufficient to submit the base URL, supplied via the \code{\link{base_url}} function, and the name of the variable).
#' @param dims A list of dimensional parameters to filter data by. Note that values \emph{must} be submitted for all dimensions of the data. If you don't want to filter data, submit an asterisk in quotation marks ("*") instead of values for that dimension.
#' @param clean Clean and melt the data to R format.
#' 
#' @details
#' Function is depricated. Please use \link{\code{get_pxweb_data}} instead. To get api parameters, use \code{\link{scb_api_parameters}}.
#' 
#' @seealso
#' \code{\link{get_pxweb_metadata}}, \code{\link{get_pxweb_dims}}, \code{\link{get_pxweb_levels}}
#' 
#' @export
#' 

scbGetData <- function(url, dims, clean = FALSE) {
  warning("scbGetData() is depricated. Please use get_pxweb_data() instead. \nAPI parameters for Statistics Sweden can found with scb_api_parameters().")
  get_pxweb_data(url=url, dims = dims, clean = clean)
}


#' Return base URL to SCB API (Function is depricated)
#' 
#' ...
#' 
#' @param version The version of SCB API to use. (Default: \code{v1})
#' @param lang The language (two letters) to use in the fetched data. (Default: \code{sv})
#' @param ... Additional parameters. These are currently ignored.
#' @export
baseURL <- function(version="v1", lang="sv", ...) {
  warning("Function is depricated, please use base_url() instead.")
  base_url(api = "api.scb.se", version = version, lang = lang, ...)
}
