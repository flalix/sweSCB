#' @title Find and download data from Statistics Sweden
#'
#' @description Function to simply find and download data from SCB to the current R session. 
#' 
#' @param history keep the history when the function is running.
#' @param lang API language. Default is \code{"sv"} (swedish). Use \code{\link{scb_api_parameters}} to see possible languages.
#' @param version API version. Default is \code{"v1"} (version 1). Use \code{\link{scb_api_parameters}} to see possible versions.
#' @param ... further parameters. These are currently ignored.
#' 
#' 
#' @seealso
#' \code{\link{get_pxweb_metadata}}, \code{\link{get_pxweb_data}}
#' @export
#' @examples
#' \dontrun{
#' myDownloadedData <- find_scb_data()
#' }

find_scb_data <- function(lang = "sv", version = "v1", history = FALSE, ...){
  interactive_pxweb(baseURL = base_url(api = "api.scb.se", version = version, lang = lang))
}




