
## As participants arrive...

Participants have been asked to install or update R and RStudio prior to the workshop,
as well as install the following packages:

- `knitr`
- `rmarkdown`
- `ggplot2`
- `dplyr`

It is possible that some of them did not yet do that. If people show up early remind
them to complete installation, and re-point them to the instructions in the
pre-workshop email and/or the workshop website. Note that they will not need these tools until after the coffee break. 


## Intro (15 min)

## Welcome + overview

- Welcome the participants.

- Remind them the mission statement and the tagline:
    - Mission statement: To Train researchers in the best practices and approaches of reproducible research and accelerate scientific progress
    - Tagline: Accelerating scientific progress through reproducible science.

- Briefly go over the schedule for the workshop.

- Getting to know you exercise and group discussion:
   - 6 months from now can you or someone else go back to your project and understand what was going on? What types of methods do you use to document a project?
   - Take notes on the board of tools people use.

- Review a few case studies:
    - Some are already discussed in `01-intro-slides`
    - If you prefer to discuss others, see some examples at https://github.com/Reproducible-Science-Curriculum/Reproducible-Science-Hackathon-Dec-08-2014/wiki/Irreproducible-Examples

## Exercise: Motivating reproducibility (40 mins)

### Part 1: Analyze + document (20 minutes)

#### From the slides:

<div class="boxed">
Complete the following tasks and **write instructions /
documentation** for your collaborator to reproduce your work starting with the
original dataset (`data/gapminder-5060.csv`).

1. Visualize life expectancy over time for Canada in the 1950s and 1960s using
a line plot.
2. Something is clearly wrong with this plot! Turns out there's a data error
in the data file: life expectancy for Canada in the year 1967 is coded
as `999999`, it should actually be `69.96`. Make this correction.
3. Visualize life expectancy over time for Canada again, with the corrected
data.<br>
*Stretch goal:* Add lines for Mexico and US.
</div>

### Reflection - group discussion: (5 mins)

#### From the slides:

<div class="boxed">
- What tools would you use (Excel / R / Python / Word / plain text etc.)?
- How would you ensure that others can reproduce your work?
- What would happen if your collaborator is no longer available to walk you through
their analysis?
- What would make it easy / hard for reproducing someone else's work?
- What would have to happen if
    - you had to swap out the dataset or extend the analysis further?
    - you caught further data errors and had to re-create the analysis
    with corrections?
    - you had to revert back to the original dataset?
</div>

#### Tips for instructors:

- Collect data from the students on their tool choice and success. Tallying these
on the board creates a nice visual.
    - If you know that the session will have a large number of participants preparing a
    Google Form might be useful.
- Keep the discussion on the second set of questions to an informal discussion, and
feel free to keep it short if exercise took longer than intended.


## Introduce toolkit

- R, RStudio, R Markdown

- Walk through splash screens of R and RStudio (but spend more time on RStudio)

## R Markdown demo

The goal of is to demonstrate how each of the goals of Organization, Automation, Documentation, and Dissemination, can be addressed in an R Markdown document.

### Key steps introduced:

**IMPORTANT:** Emphasize that this exercise is NOT about understanding all the R commands,
but rather getting the big picture of how using R in this way facilitates reproducible
analyses.

- Demonstrate "good practice" for organizing data files and analysis
documents (R Markdown)
- How to read data from a file
- How to manipulate the data, and document it in a reproducible way
    - How easy it would be to revert any changes if need be
- How to subset data
- How to make simple plots in ggplot

### Important features of an R Markdown document to discuss:

- YAML on top
- Code in chunks
- R Markdown syntax
    - Human readable!
    - Limited, so not too time consuming to master
- Self-contained workspace

### Extend the analysis:

All code included in the template.

Important to emphasize we're using the same subsetting and visualization code,
just with new data. Reproducing old work with new data is easy!

### Take aways:

- The analysis is self-documenting
- It's easy to extend or refine analyses by copying and modifying code blocks
- The results of the analysis can be disseminated by sending R Markdown and
providing data sources, or just simply providing the generated HTML of just
a summary of the analysis is needed

## Reproducibility checklist:

Point them to the checklist (`checklist.md`), don't read the whole list (too long), but can
discuss the documentation part if there is time.
