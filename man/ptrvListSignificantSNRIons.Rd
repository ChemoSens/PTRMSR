% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ptrvListSignificantSNRIons.r
\name{ptrvListSignificantSNRIons}
\alias{ptrvListSignificantSNRIons}
\title{ptrvListSignificantSNRIons}
\usage{
ptrvListSignificantSNRIons(
  listFiles,
  metaData,
  dec_vec = rep(".", length(listFiles)),
  multiplyNoiseBy = 3,
  noisePeriod = c(0, 25),
  removeNoise = TRUE,
  maxPeaks = NULL,
  minimalDuration = 2,
  halfWindowSize = 5,
  smoothMethod = "MovingAverage"
)
}
\arguments{
\item{listFiles}{list of files}

\item{metaData}{metaData}

\item{dec_vec}{vector with the same size as listFiles containing the decimal separator used in the files}

\item{multiplyNoiseBy}{a number such as a ion whose maximal intensity during tasting/maximal intensity during blank period > multiplyNoiseBy is detected as significant (used for method=="max")}

\item{noisePeriod}{vector with two numbers indicating the period corresponding to a blank period.}

\item{removeNoise}{if TRUE, the noise is removed in the calculation of intensity by time}

\item{maxPeaks}{A number. Below this value, a peak is not considered as a peak}

\item{minimalDuration}{minimalDuration of a breathing cycle (2 by default - as a accelerated breathing frequency corresponds to 20 cycles and more by minut and a low frequency is 12 and less -)}

\item{halfWindowSize}{parameter used to determine the smooth for the peak-picking used in break detection}

\item{smoothMethod}{NULL, "SavitzkyGolay" or "MovingAverage"}
}
\value{
A list containing: resIons: the ration Signal/Noise for all ions; intersection: the ions significant in all files; union: the ions significant in at least one file.
}
\description{
This function calculates the ratio (max intensity for signal)/(max intensity for noise) after breathing correction and returns an ion as significant if this ratio is higher than 3.
}
\examples{
# DONOTRUN
#sigIons=ptrvListSignificantSNRIons(listFiles=c("file.txt","file2.txt"),
# referenceBreath="isoprene",noisePeriod=c(0,25))
}
