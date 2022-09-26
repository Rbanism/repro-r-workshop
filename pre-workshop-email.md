---
editor_options: 
  markdown: 
    wrap: 72
---

# Pre-workshop email

This document contains standard language that can be used in the
pre-workshop email including instructions for software set-up.

**Note:** The document is designed for a workshop using R, if using
another language, update accordingly.

------------------------------------------------------------------------

Prior to the workshop, please download and install R, [a free software
environment for statistical computing and
graphics](http://www.r-project.org/) and RStudio, [a powerful user
interface for R](http://www.rstudio.com/). Note that R is the name of
the programming language itself and RStudio is a convenient interface.
Therefore while you will be working in RStudio throughout the workshop,
R must also be installed on your computer.

**Download:**

-   *R*: You can download R from [CRAN](http://cran.r-project.org/), the
    Comprehensive R Archive Network. It is highly recommended to install
    a precompiled binary distribution for your operating system -- use
    the links up at the top of the CRAN page.
-   *RStudio*: You can download RStudio Desktop (free)
    [here](http://www.rstudio.com/products/rstudio/download/).

**Install:** Instructions for installing R and RStudio are provided
below, as well as links to videos that walk you through the process.
Note newer versions of R and RStudio may have been released since this
video, and hence the version names you come across may not match what
you see on the video. However the general instructions should still
work.

Do not worry if you run into any trouble during the installation, we
will have some time during the workshop to help you.

-   Mac / OS X:
    -   [Video
        instructions](https://www.youtube.com/watch?v=bLSnXURs1YA&ab_channel=MikeColbert) -
        includes RStudio installation
    -   Install R: Install R-4.2.1.pkg. This runs on macOS 10.13 (High
        Sierra) and later. To install, just double-click on the icon of
        the file you downloaded. See
        [here](http://cran.r-project.org/doc/manuals/r-release/R-admin.html#Installing-R-under-OS-X%20for)
        for more info.
    -   Install RStudio: Double click on RStudio-2022.07.2-576.dmg and
        follow the prompts.
-   PC / Windows:
    -   [Video
        instructions](https://www.youtube.com/watch?v=q0PjTAylwoU&t=223s&ab_channel=SarahStevens)
    -   Install R: Installation is via the installer R-4.2.1-win.exe.
        Just double-click on the icon and follow the instructions. See
        [here](http://cran.r-project.org/doc/manuals/r-release/R-admin.html#Installing-R-under-Windows)
        for more info.
    -   Install RStudio:Double click on RStudio-2022.07.2-576.exe and
        follow the prompts.
-   Unix-alikes: See
    [here](http://cran.r-project.org/doc/manuals/r-release/R-admin.html#Installing-R-under-Unix_002dalikes)
    for more info.

**Testing:** Do whatever is appropriate for your OS to launch RStudio.
You should get a window similar to the screenshot you see in the video
[here](http://www.rstudio.com/products/rstudio/). Put your cursor in the
pane labelled *Console*, which is where you interact with the live R
process. Create a simple object with code like `x <- 2 * 4` (followed by
enter or return). Then inspect the `x` object by typing `x` followed by
enter or return. You should see the value 8 print to screen. If yes, you
are good to go.

**Add-on packages:** R is an extensible system and many people share
useful code they have developed as a package via CRAN and github. To
install a package from CRAN, for example the `ggplot2` package for data
visualization (which we will use during the workshop) type
`install.packages("ggplot2")` in your Console. This is one way of
installing packages (there are others). In addition to `ggplot2`, we
will also need the packages `knitr`, `rmarkdown`, and `dplyr`. Install
those packages too by running the following code in the console,
pressing enter or return after each line:

    install.packages("knitr")
    install.packages("rmarkdown")
    install.packages("dplyr")
