% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/peakDiagnostic.r
\name{peakDiagnosis}
\alias{peakDiagnosis}
\title{peakDiagnosis
Returns potential problematic peaks: when one single peak is exepected, the number of candidate is displayed. When no peak is detected, no peak is displayed.}
\usage{
peakDiagnosis(df, minimalIntensity = 0, relativeThreshold = 50, nPoints = 101)
}
\arguments{
\item{df}{data frame whose colnames are time and intensity}

\item{minimalIntensity}{minimal intensity required to be a peak of interest}

\item{relativeThreshold}{percentage of relative intensity of the maximal peak to be reached.}

\item{nPoints}{number of points required in the smoothing
@export}
}
\description{
peakDiagnosis
Returns potential problematic peaks: when one single peak is exepected, the number of candidate is displayed. When no peak is detected, no peak is displayed.
}
