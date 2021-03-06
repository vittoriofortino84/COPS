% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/evaluation_metrics.R
\name{clustering_evaluation}
\alias{clustering_evaluation}
\title{Clustering, internal evaluation and batch effect estimation}
\usage{
clustering_evaluation(
  dat,
  batch_label_names = NULL,
  subtype_label_names = NULL,
  n_clusters = 2:5,
  cluster_methods = c("hierarchical", "diana", "kmeans"),
  distance_metric = "euclidean",
  correlation_method = "spearman",
  hierarchical_linkage = "complete",
  kmeans_num_init = 100,
  kmeans_max_iters = 100,
  kmeans_tol = 1e-04,
  gmm_modelNames = NULL,
  gmm_shrinkage = 0.01,
  ...
)
}
\arguments{
\item{dat}{A data matrix with samples on columns.}

\item{batch_label_names}{A character vector containing column names corresponding to batch labels.}

\item{subtype_label_names}{A character vector containing column names corresponding to batch labels.}

\item{n_clusters}{A vector of integers, numbers of clusters to be generated.}

\item{cluster_methods}{A vector of clustering method names, see details for options.}

\item{distance_metric}{Either "euclidean" or "correlation".}

\item{correlation_method}{Method for \code{\link[stats]{cor}}.}

\item{hierarchical_linkage}{See \code{\link[flashClust]{flashClust}}.}

\item{kmeans_num_init}{See \code{\link[ClusterR]{KMeans_rcpp}}.}

\item{kmeans_max_iters}{See \code{\link[ClusterR]{KMeans_rcpp}}.}

\item{kmeans_tol}{See \code{\link[ClusterR]{KMeans_rcpp}}.}

\item{gmm_modelNames}{Sepcifies model type for \code{\link[mclust]{Mclust}}}

\item{gmm_shrinkage}{Shrinkage parameter for \code{\link[mclust]{priorControl}}.}

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
\item "kmeans" -
\item "model" -
}
}
