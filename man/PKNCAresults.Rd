% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/data.classes.R
\name{PKNCAresults}
\alias{PKNCAresults}
\title{Generate a PKNCAresults object}
\usage{
PKNCAresults(result, formula, options = list())
}
\arguments{
\item{result}{a data frame with NCA calculation results and groups.
Each row is one interval and each column is a group name or the
name of an NCA parameter.}

\item{formula}{The formula used for concentration data in the
calculations.  The groups are verified to be column names in the
\code{result} parameter.}

\item{options}{Options that are different from the defaults.  All
options (default and custom) are stored with the results.}
}
\value{
A PKNCA object with each of the above within.
}
\description{
This function should not be run directly.  The object is created
for summarization and plotting.
}
