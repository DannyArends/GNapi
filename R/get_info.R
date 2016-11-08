#' Get info about a cross
#'
#' Get info about a cross
#'
#' @param cross Name of cross, as single character string
#' @param url URL for GeneNetwork API
#'
#' @return A list
#'
#' @importFrom httr GET content stop_for_status
#' @export
#'
#' @examples
#' info_cross("BXD")
info_cross <-
    function(cross, url="http://test-gn2.genenetwork.org/api_pre1/")
{
    # cross should be a single character string
    stopifnot(!is.null(cross), length(cross) == 1,  is.character(cross))

    result <- httr::GET(paste0(url, "group/", cross, ".json"))
    listresult <- httr::content(result)
    httr::stop_for_status(result)

    listresult
}

#' Get info about a dataset
#'
#' Get info about a dataset
#'
#' @param cross Name of dataset, as single character string
#' @param url URL for GeneNetwork API
#'
#' @return A list
#'
#' @importFrom httr GET content stop_for_status
#' @export
#'
#' @examples
#' info_dataset("HC_U_0304_R")
info_dataset <-
    function(dataset, url="http://test-gn2.genenetwork.org/api_pre1/")
{
    # dataset should be a single character string
    stopifnot(!is.null(dataset), length(dataset) == 1,  is.character(dataset))

    result <- httr::GET(paste0(url, "dataset/", dataset, ".json"))
    listresult <- httr::content(result)
    httr::stop_for_status(result)

    listresult
}