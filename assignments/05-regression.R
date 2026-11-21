# SOSC 13200 W27, Assignment 05. Run from the assignments folder.
# Name:
# Section:
# If needed, install once in your R console: install.packages("estimatr")
raw <- read.csv("../data/card-krueger_1994.csv", na.strings = "NA")
employment_columns <- c("state", "empft", "nmgrs", "emppt",
                        "empft2", "nmgrs2", "emppt2")
keep <- complete.cases(raw[employment_columns])
dat <- raw[keep, ]
dat$FTE1 <- dat$empft + dat$nmgrs + 0.5 * dat$emppt
dat$FTE2 <- dat$empft2 + dat$nmgrs2 + 0.5 * dat$emppt2
