
R version 4.4.0 (2024-04-24) -- "Puppy Cup"
Copyright (C) 2024 The R Foundation for Statistical Computing
Platform: aarch64-apple-darwin20

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

  Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

[R.app GUI 1.80 (8376) aarch64-apple-darwin20]

[Workspace restored from /Users/alfred/.RData]
[History restored from /Users/alfred/.Rapp.history]

> data <- read.csv("/Users/alfred/Downloads/train.csv")
> ggplot(data, aes(x = Age)) + geom_histogram(binwidth = 1, fill = "blue", color = "black")
Error in ggplot(data, aes(x = Age)) : could not find function "ggplot"
> 
> library(tidyverse)
── Attaching core tidyverse packages ──────────────────────────────────────────────────────────────────────────────────── tidyverse 2.0.0 ──
✔ dplyr     1.1.4     ✔ readr     2.1.5
✔ forcats   1.0.0     ✔ stringr   1.5.1
✔ ggplot2   3.5.1     ✔ tibble    3.2.1
✔ lubridate 1.9.3     ✔ tidyr     1.3.1
✔ purrr     1.0.2     
── Conflicts ────────────────────────────────────────────────────────────────────────────────────────────────────── tidyverse_conflicts() ──
✖ dplyr::filter() masks stats::filter()
✖ dplyr::lag()    masks stats::lag()
ℹ Use the conflicted package (<http://conflicted.r-lib.org/>) to force all conflicts to become errors
> data <- read.csv("/Users/alfred/Downloads/train.csv")
> ggplot(data, aes(x = Age)) + geom_histogram(binwidth = 1, fill = "blue", color = "black")
Warning message:
Removed 179 rows containing non-finite outside the scale range (`stat_bin()`). 
> 
> library(tidyverse)
> data <- read.csv("/Users/alfred/Downloads/train.csv")
> ggplot(data, aes(x = Age)) + geom_histogram(binwidth = 1, fill = "blue", color = "black")
Warning message:
Removed 179 rows containing non-finite outside the scale range (`stat_bin()`). 
> ggplot(aes(x = HomePlanet, y = prop, fill = Transported)) + geom_bar(stat = "identity", position = "dodge")
Error in `fortify()`:
! `data` must be a <data.frame>, or an object coercible by `fortify()`, or a valid <data.frame>-like object coercible by
  `as.data.frame()`, not a <uneval> object.
ℹ Did you accidentally pass `aes()` to the `data` argument?
Run `rlang::last_trace()` to see where the error occurred.
> library(tidyverse)
> data <- read.csv("/Users/alfred/Downloads/train.csv")
> ggplot(data, aes(x = Age)) + geom_histogram(binwidth = 1, fill = "blue", color = "black")
Warning message:
Removed 179 rows containing non-finite outside the scale range (`stat_bin()`). 
> ggplot(data, aes(x = CryoSleep)) + geom_bar(fill = "blue", color = "black")
> library(tidyverse)
> library(gridExtra)
Error in library(gridExtra) : there is no package called ‘gridExtra’
> data <- read.csv("/Users/alfred/Downloads/train.csv")
> plot1 <- ggplot(data, aes(x = Age)) +
+   geom_histogram(binwidth = 1, fill = "blue", color = "black")
> plot2 <- ggplot(data, aes(x = CryoSleep)) +
+   geom_bar(fill = "blue", color = "black")
> grid.arrange(plot1, plot2, ncol = 1)
Error in grid.arrange(plot1, plot2, ncol = 1) : 
  could not find function "grid.arrange"
> install.packages("gridExtra")
--- Please select a CRAN mirror for use in this session ---
trying URL 'https://cloud.r-project.org/bin/macosx/big-sur-arm64/contrib/4.4/gridExtra_2.3.tgz'
Content type 'application/x-gzip' length 1105831 bytes (1.1 MB)
==================================================
downloaded 1.1 MB


The downloaded binary packages are in
	/var/folders/w1/nzqqxf993hn1_npd7wx0yhgw0000gn/T//RtmpJAwDFa/downloaded_packages
> 
> library(tidyverse)
> library(gridExtra)

Attaching package: ‘gridExtra’

The following object is masked from ‘package:dplyr’:

    combine

> data <- read.csv("/Users/alfred/Downloads/train.csv")
> plot1 <- ggplot(data, aes(x = Age)) +
+   geom_histogram(binwidth = 1, fill = "blue", color = "black")
> plot2 <- ggplot(data, aes(x = CryoSleep)) +
+   geom_bar(fill = "blue", color = "black")
> grid.arrange(plot1, plot2, ncol = 1)
Warning message:
Removed 179 rows containing non-finite outside the scale range (`stat_bin()`). 

library(tidyverse)
library(gridExtra)
data <- read.csv("/Users/alfred/Downloads/train.csv")
plot1 <- ggplot(data, aes(x = Age)) + geom_histogram(binwidth = 1, fill = "blue", color = "black")
plot2 <- ggplot(data, aes(x = CryoSleep)) + geom_bar(fill = "blue", color = "black")
data$AgeGroup <- cut(data$Age, breaks = seq(0, max(data$Age, na.rm = TRUE), by = 7))
plot3 <- ggplot(data, aes(x = AgeGroup, fill = CryoSleep)) + geom_bar(position = "dodge")
grid.arrange(plot1, plot2, plot3, ncol = 1)

library(tidyverse)
library(gridExtra)
data <- read.csv("/Users/alfred/Downloads/train.csv")
plot1 <- ggplot(data, aes(x = Age)) + geom_histogram(binwidth = 1, fill = "blue", color = "black")
plot2 <- ggplot(data, aes(x = CryoSleep)) + geom_bar(fill = "blue", color = "black")
data$AgeGroup <- cut(data$Age, breaks = seq(0, max(data$Age, na.rm = TRUE), by = 7))
plot3 <- ggplot(data, aes(x = AgeGroup, fill = CryoSleep)) + geom_bar(position = "dodge")
plot4 <- ggplot(data, aes(x = VIP)) + geom_bar(fill = "blue", color = "black")
grid.arrange(plot1, plot2, plot3, plot4, ncol = 1)

library(tidyverse)
library(gridExtra)
data <- read.csv("/Users/alfred/Downloads/train.csv")
plot1 <- ggplot(data, aes(x = Age)) + geom_histogram(binwidth = 1, fill = "blue", color = "black")
plot2 <- ggplot(data, aes(x = CryoSleep)) + geom_bar(fill = "blue", color = "black")
data$AgeGroup <- cut(data$Age, breaks = seq(0, max(data$Age, na.rm = TRUE), by = 7))
plot3 <- ggplot(data, aes(x = AgeGroup, fill = CryoSleep)) + geom_bar(position = "dodge")
plot4 <- ggplot(data, aes(x = VIP)) + geom_bar(fill = "blue", color = "black")
plot5 <- ggplot(data, aes(x = AgeGroup, fill = VIP)) + geom_bar(position = "dodge")
grid.arrange(plot1, plot2, plot3, plot4, plot5, ncol = 1)

library(tidyverse)
library(gridExtra)
data <- read.csv("/Users/alfred/Downloads/train.csv")
plot1 <- ggplot(data, aes(x = Age)) + geom_histogram(binwidth = 1, fill = "blue", color = "black")
data$AgeGroup <- cut(data$Age, breaks = seq(0, max(data$Age, na.rm = TRUE), by = 7))
plot3 <- ggplot(data, aes(x = AgeGroup, fill = CryoSleep)) + geom_bar(position = "dodge")
plot5 <- ggplot(data, aes(x = AgeGroup, fill = VIP)) + geom_bar(position = "dodge")
grid.arrange(plot1, plot3, plot5, ncol = 1)

library(tidyverse)
library(gridExtra)
data <- read.csv("/Users/alfred/Downloads/train.csv")
data$AgeGroup <- cut(data$Age, breaks = seq(0, max(data$Age, na.rm = TRUE), by = 7))
plot1 <- ggplot(data, aes(x = AgeGroup)) + geom_bar(fill = "blue", color = "black")
plot3 <- ggplot(data, aes(x = AgeGroup, fill = CryoSleep)) + geom_bar(position = "dodge")
plot5 <- ggplot(data, aes(x = AgeGroup, fill = VIP)) + geom_bar(position = "dodge")
grid.arrange(plot1, plot3, plot5, ncol = 1)

