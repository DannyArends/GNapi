% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_pheno.R
\name{list_probesets}
\alias{list_probesets}
\title{List probesets for a dataset}
\usage{
list_probesets(dataset, url = "http://test-gn2.genenetwork.org/api_pre1/")
}
\arguments{
\item{dataset}{Name or ID for dataset as a single character string}

\item{url}{URL for GeneNetwork API}
}
\value{
Data frame with probeset info
}
\description{
List probesets for a dataset
}
\examples{
list_probesets("HC_U_0304_R")
}

