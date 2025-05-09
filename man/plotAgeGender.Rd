% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/discouraged_functions.R
\name{plotAgeGender}
\alias{plotAgeGender}
\title{Age and Gender bar graph}
\usage{
plotAgeGender(
  .data,
  xvar = "XLabel",
  yvar = "ZValue",
  group = "YLabel",
  fill_color1 = "#65B32E",
  fill_color2 = "#7CBDC4",
  ytitle = "Rate"
)
}
\arguments{
\item{.data}{dataframe containing the variables to plot}

\item{xvar}{character string, name of the variable to plot on the x-axis in quotes
(default \code{"XLabel"})}

\item{yvar}{character string, name of the variable to plot on the y-axis in quotes
(default \code{"ZValue"})}

\item{group}{character string, name of the grouping variable in quotes, e.g. gender.
(default \code{"YLabel"})}

\item{fill_color1}{character string, hexadecimal colour to use in the graph for bar 1;
(default to ECDC green \code{"#65B32E"}, see EcdcColors(col_scale = "qual", n = 2))}

\item{fill_color2}{character string, hexadecimal colour to use in the graph for bar 2;
(default to ECDC blue \code{"#7CBDC4"}, see EcdcColors(col_scale = "qual", n = 2))}

\item{ytitle}{character string, y-axis title; (default \code{"Rate"}).}
}
\description{
(Discouraged function. Please use \code{plotBarGrouped()} instead.)
}
\details{
This function draws a bar graph of the distribution of cases by age group
and gender (or possibly other grouping). \cr
The bar graph presents the distribution of cases at EU/EEA level using either:
\itemize{
   \item{\code{AG-COUNT}: The number of cases by age and gender}
   \item{\code{AG-RATE}: The rate per 100 000 cases by age and gender}
   \item{\code{AG-PROP}: The proportion of cases by age and gender}
}
Expects aggregated data.
}
\examples{
# --- Create dummy data
mydat <- data.frame(Gender=c("F", "F", "M", "M"),
                    AgeGroup = c("0-65", "65+", "0-65", "65+"),
                    NumberOfCases = c(54,43,32,41))

# --- Plot the dummy data
plotAgeGender(mydat,
              xvar = "AgeGroup",
              yvar = "NumberOfCases",
              group = "Gender",
              ytitle = "Number of cases")

}
\seealso{
Global function: \code{\link{getAgeGender}}  \cr
Internal function: \code{\link{EcdcColors}} \cr
Required Packages: \code{\link[ggplot2]{ggplot}}
}
\keyword{age}
\keyword{bargraph}
\keyword{gender}
