% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AER_trend_graph.R
\name{getTrend}
\alias{getTrend}
\title{Get disease-specific trend plot: trend and number of cases by month}
\usage{
getTrend(
  x = EpiReport::DENGUE2019,
  disease = "DENGUE",
  year = 2019,
  reportParameters = EpiReport::AERparams,
  MSCode = EpiReport::MSCode,
  index = 1,
  doc
)
}
\arguments{
\item{x}{dataframe, raw disease-specific dataset (see specification of the
dataset in the package vignette with \code{browseVignettes(package = "EpiReport")})
(default \code{DENGUE2019})}

\item{disease}{character string, disease code (default \code{"DENGUE"}).
Please make sure the disease code is included in the disease-specific dataset x
in the \code{HealthTopicCode} variable.}

\item{year}{numeric, year to produce the graph for (default \code{2019}).
Please make sure the year is included in the disease-specific dataset x
in the \code{TimeCode} variable.}

\item{reportParameters}{dataframe, dataset including the required parameters
for the graph and report production (default \code{AERparams}) (see specification
of the dataset in the package vignette with \code{browseVignettes(package = "EpiReport")})}

\item{MSCode}{dataframe, correspondence table of GeoCode names and codes
(default \code{MSCode}) (see specification of the dataset in the
package vignette with \code{browseVignettes(package = "EpiReport")})}

\item{index}{integer, figure number}

\item{doc}{'Word' document (see \code{officer} package) in which to add the graph
at the bookmark location.
If doc is missing, \code{getTrend} returns the \code{ggplot2} object.}
}
\value{
'Word' doc or a ggplot2 preview
}
\description{
Function returning the plot describing the trend of the disease over time
that will be included in the epidemiological report at the bookmark location
\code{'TS_TREND'} on the template report. \cr
\cr
The graph includes the number of cases at EU/EEA level, by month,
over the past five years, with:
\itemize{
   \item{The number of cases by month over the 5-year period (grey solid line)}
   \item{The 12-month moving average of the number of cases by month (green solid line)}
}
(see ECDC reports
\url{https://www.ecdc.europa.eu/en/publications-data/monitoring/all-annual-epidemiological-reports})
}
\examples{

# --- Plot using the default dataset
getTrend()

# --- Plot using external dataset
# --- Please see examples in the vignette
browseVignettes(package = "EpiReport")

}
\seealso{
Global function for the full epidemilogical report: \code{\link{getAER}}  \cr
Required Packages: \code{\link[ggplot2]{ggplot}} \code{\link[officer]{body_replace_text_at_bkm}} \cr
Internal functions: \code{\link{plotTS12MAvg}} \cr
Default datasets: \code{\link{AERparams}} \code{\link{MSCode}}
}
