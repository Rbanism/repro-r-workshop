# Reproducible Research with R for Urbanists

## Schedule
| Time | Subject | Teacher | Materials |
|--:|:--|:--|:--|
| 9:30 | Introduction | Claudiu Forgaci | |
| 10:00 | Project organization | Barbara Vreede | |
| 11:00 | _Coffee break_ | | |
| 11:15 | Automating with R | Barbara Vreede | [automation workflow](exercises/02-automation.html) |
| 12:30 | _Lunch break_ | | |
| 13:30 | Automating with R | Barbara Vreede | |
| 14:00 | Literate programming | Claudiu Forgaci | [Getting started with R Markdown](https://datacarpentry.org/r-socialsci/05-rmarkdown/index.html) |
| 15:00 | _Coffee break_ | | |
| 15:15 | Literate programming | Claudiu Forgaci | |
| 15:45 | Publication | Claudiu Forgaci | |
| 16:30 | _Wrap-up & drinks_ | | |


## Setup instructions

1. Install R from https://cran.rstudio.com/
2. Install Rstudio from https://www.rstudio.com/products/rstudio/download/#download
3. Install Tidyverse from Rstudio:
  - Open Rstudio
  - Look for a window that says "console" (probably bottom left of your screen). 
  - In the console, type: `install.packages("tidyverse")`, then hit 'enter'.
  - In case the question `Do you want to install from sources the package which needs compilation? (Yes/no/cancel)` pops up, answer `no`.
4. Finally, confirm that tidyverse is installed: 
  - find the 'console' window, and type: `library(tidyverse)`. Then hit 'enter'.
  - You should see something that looks like this:
  ```
  ── Attaching packages ──────────────────────────────────────────────────────────────────────────────────────────── tidyverse 1.3.2 ──
  ✔ ggplot2 3.3.6     ✔ purrr   0.3.4
  ✔ tibble  3.1.8     ✔ dplyr   1.0.9
  ✔ tidyr   1.2.0     ✔ stringr 1.4.1
  ✔ readr   2.1.2     ✔ forcats 0.5.2
  ── Conflicts ─────────────────────────────────────────────────────────────────────────────────────────────── tidyverse_conflicts() ──
  ✖ dplyr::filter() masks stats::filter()
  ✖ dplyr::lag()    masks stats::lag()
  ```