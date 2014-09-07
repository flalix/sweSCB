#' @title Get API - parameters for Statistics Swedens API
#'
#' @description Wrapper function to get the api_parameters for statistics Sweden using \code{\link{api_parameters}}.
#'  
#' @seealso
#' \code{\link{api_parameters}}
#' @export
#' @examples
#' scb_api_parameters()
scb_api_parameters <- function(){
  api_parameters("http://api.scb.se")
}
