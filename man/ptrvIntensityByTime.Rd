% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ptrvIntensityByTime.r
\name{ptrvIntensityByTime}
\alias{ptrvIntensityByTime}
\title{ptrvIntensityByTime}
\usage{
ptrvIntensityByTime(
  dataset,
  referenceBreath = NULL,
  correction = "none",
  timePeriod = NULL,
  timeStart = 0,
  removeNoise = TRUE,
  timeBlank = c(0, 30),
  halfWindowSize = 5,
  maxPeaks = NULL,
  total = FALSE,
  breathRatio = FALSE,
  method = "MAD",
  SNR = 0,
  ions = NULL,
  funAggregate = "mean",
  smoothMethod = "MovingAverage",
  minimalDuration = 2
)
}
\arguments{
\item{dataset}{whose names are IN THIS ORDER:AbsTime, RelTime, Cycle, Ion1,... ,Ionp.}

\item{referenceBreath}{name of the ion taken as reference for breathing}

\item{correction}{"none" or "cycle". See Details.}

\item{timePeriod}{vector containing starting and stopping point to get the statistics}

\item{timeStart}{timeStart is a value to be removed of the relTime column}

\item{removeNoise}{if TRUE, the averaged intensity obtained during the timeBlank period is removed from the signal}

\item{timeBlank}{vector of two numbers. Indicates the interval to take as a blank period.}

\item{halfWindowSize}{parameter used to determine the smooth for the peak-picking used in break detection}

\item{maxPeaks}{A number. Below this value, a peak is not considered as a peak}

\item{total}{if TRUE, the total intensity is calculated and added as a supplementary column}

\item{breathRatio}{if TRUE, the ratio between the intensity of ion and the breath is calculated}

\item{method}{method used for peak picking ("MAD" by default)}

\item{SNR}{Signal noise ratio parameter used in peak picking}

\item{ions}{vector contatining all ions to be used in the analysis (by default all ions are used)}

\item{funAggregate}{"mean", "maximal" or "sum"}

\item{smoothMethod}{NULL, "SavitzkyGolay" or "MovingAverage"}

\item{minimalDuration}{minimalDuration of a breathing cycle (2 by default - as a accelerated breathing frequency corresponds to 20 cycles and more by minut and a low frequency is 12 and less -)}
}
\value{
a list containing the obtained result and ggplot object
}
\description{
Calculates the intensity by time for PTRViewer files. The calculation can be done by breathing cycle or on raw data.Breathing cycles are calculated on a reference ion (referenceBreath) with peak picking algorithms
}
