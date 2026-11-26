# Retail revenue forecast

A seasonal forecast tested against twelve months of sales.

Each month uses sales from twelve months earlier. Weighted absolute percentage error divides total absolute error by total actual sales.

Input: published summary observations from [Haley Maes’ data index](https://github.com/haleymaes/haleymaes.github.io/blob/91e351fbf514fb3e8e6217ec1a122d946a251f87/projects.js). Values are at the published precision. The input CSV contains aggregate statistics. The SQLite query and result table are provided here for reproduction.
