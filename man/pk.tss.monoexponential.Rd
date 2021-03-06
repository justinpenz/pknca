% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tss.monoexponential.R
\name{pk.tss.monoexponential}
\alias{pk.tss.monoexponential}
\title{Compute the time to steady state using nonlinear, mixed-effects
modeling of trough concentrations.}
\usage{
pk.tss.monoexponential(..., tss.fraction = 0.9, output = c("population",
  "popind", "individual", "single"), check = TRUE, verbose = FALSE)
}
\arguments{
\item{tss.fraction}{The fraction of steady-state required for
calling steady-state}

\item{output}{Which types of outputs should be produced?
\code{population} is the population estimate for time to
steady-state (from an nlme model), \code{popind} is the individual
estimate (from an nlme model), \code{individual} fits each
individual separately with a gnls model, and \code{single} fits all
the data to a single gnls model.}

\item{check}{See \code{\link{pk.tss.data.prep}}.}

\item{verbose}{Describe models as they are run, show convergence of
the model (passed to the nlme function), and additional details
while running.}

\item{\dots}{See \code{\link{pk.tss.data.prep}}}
}
\value{
A scalar float for the first time when steady-state is
achieved or \code{NA} if it is not observed.
}
\description{
Trough concentrations are selected as concentrations at the time of
dosing.  An exponential curve is then fit through the data with a
different magnitude by treatment (as a factor) and a random
steady-state concentration and time to stead-state by subject (see
\code{random.effects} argument).
}
\references{
Maganti L, Panebianco DL, Maes AL.  Evaluation of Methods for
Estimating Time to Steady State with Examples from Phase 1 Studies.
AAPS Journal 10(1):141-7. doi:10.1208/s12248-008-9014-y
}
\seealso{
\code{\link{pk.tss}}, \code{\link{pk.tss.stepwise.linear}}
}

