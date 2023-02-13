package_array <- (c("AER", "car", "censReg", "dplyr", "dummies", "dynlm", "effects", "ggplot2",
                    "lmtest", "maps", "mfx", "orcutt", "plm", "quantmod", "sandwich", "quantreg",
                    "rio", "rmarkdown", "sampleSelection", "stargazer", "survival", "systemfit",
                    "truncreg", "tseries", "urca", "xtable", "vars", "WDI", "xts", "zoo",
                    "wooldridge", "tidyverse", "tibble", "TTR", "Hmisc", "forecast", "Metrics", "tsutils","dplyr", "readxl","Hmisc" ))
install.packages(package_array)
lapply(package_array, require, character.only = TRUE)

