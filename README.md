
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ‘*EpiReport v 1.0.4*’ package

European Centre for Disease Prevention and Control (ECDC)

# Description

The EpiReport package allows the user to draft an epidemiological report
similar to the **ECDC Annual Epidemiological Reports** (see
<https://ecdc.europa.eu/en/annual-epidemiological-reports>) in Microsoft
Word format for a given disease `getAER()`.

Through standalone functions, the package is specifically designed to
generate each disease-specific output presented in these reports.

The package includes:

- **Table** with the distribution of cases by Member State over the last
  five years `getTableByMS()`
- **Seasonal plot** with the distribution of cases at EU/EEA level, by
  month, over the past five years `getSeason()`
- **Trend plot** with the trend and number of cases at EU/EEA level, by
  month, over the past five years `getTrend()`
- **Age and gender bar graph** with the distribution of cases at EU/EEA
  level `getAgeGender()`

Two types of datasets can be used:

- The default dataset included in the `EpiReport` package which includes
  Denger data for 2015-2019: `EpiReport::DENGUE2019`;
- Any dataset specified as described in the package vignette.
