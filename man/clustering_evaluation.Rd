% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/evaluation_metrics.R
\name{clustering_evaluation}
\alias{clustering_evaluation}
\title{Clustering, internal evaluation and batch effect estimation}
\usage{
clustering_evaluation(
  dat,
  batch_label = NULL,
  n_clusters = 2:5,
  cluster_methods = c("hierarchical", "pam", "diana", "kmeans"),
  metric = "euclidean",
  ...
)
}
\arguments{
\item{dat}{data matrix with samples on columns}

\item{batch_label}{must be categorical vector, OPTIONAL}

\item{n_clusters}{vector of integers, numbers of clusters to be generated}

\item{cluster_methods}{vector of clustering method names, see details for options}

\item{metric}{distance metric used for clustering, see details for options}

\item{...}{extra arguments are ignored currently}
}
\value{
Returns a \code{list} containing clusters, metrics, and
        \code{\link[stats]{chisq.test}} p-values
        if batch_label was supplied
}
\description{
Single embedding or dataset evaluation
}
\details{
Supported clustering methods are:
\itemize{
\item "hierarchical" -
\item "diana" -
\item "agnes" -
\item "kmeans" -
\item "pam" -
\item "sota" -
}
The clustering methods are interfaced through \code{\link[clValid]{clValid}} so please refer to
their documentation for options on metrics.
}