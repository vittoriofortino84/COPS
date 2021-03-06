% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utility_functions.R
\name{cv_fold}
\alias{cv_fold}
\title{Cross-validation fold permutation}
\usage{
cv_fold(
  dat_list,
  nfolds = 5,
  nruns = 2,
  stratified_cv = FALSE,
  mixed_cv = FALSE,
  ...
)
}
\arguments{
\item{dat_list}{list of data matrices with samples on columns}

\item{nfolds}{number of cross-validation folds}

\item{nruns}{number of cross-validation replicates}

\item{stratified_cv}{if \code{TRUE}, try to maximize separation of batch labels within folds}

\item{mixed_cv}{if \code{TRUE}, try to minimize separation of batch labels within folds}

\item{...}{extra arguments are ignored}
}
\value{
list of data.frames with added columns "fold", "run" and "cv_index" as well as 
        duplicated rows of the original data corresponding to different folds.
}
\description{
Creates cross-validation folds of data for downstream analysis.
}
