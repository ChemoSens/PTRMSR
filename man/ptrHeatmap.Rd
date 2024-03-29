% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ptrHeatmap.r
\name{ptrHeatmap}
\alias{ptrHeatmap}
\title{ptrHeatmap}
\usage{
ptrHeatmap(ptr, threshold = 100, timebreaks = 100, massbreaks = 100, rt = NULL)
}
\arguments{
\item{ptr}{ptr object}

\item{threshold}{Intensity below this threshold are not represented}

\item{timebreaks}{Number of equidistant timepoints}

\item{massbreaks}{Number of equidistant masspoints}

\item{rt}{Numeric vector of size 2 representing the interval of time to be plotted}
}
\value{
a data frame with "mz","rt" and "int" columns
}
\description{
ptrHeatmap
}
