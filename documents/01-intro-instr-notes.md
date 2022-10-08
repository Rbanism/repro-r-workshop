##### Instruction notes adapted by Claudiu Forgaci on 2022-10-08.

## As participants arrive...

...ask them to:

-   write their names on a nametag and use it throughout the workshop;
-   check their name on the sign-up list (this is especially important for PhD candidates who want to gets GS credits for participating in the workshop);
-   fill in the pre-workshop survey if they haven't done so already;
-   install R, RStudio, tidyverse as insturcted in the pre-workshop email or ask for help if they did not manage. Note that they will not need these tools until after the coffee break.

## Intro (15 min)

### Welcome + overview

[Slide 1 - welcome]() 

- Welcome the participants.
- Introduce the team of instructors and helpers
- Code of conduct (?)

(Bridging to the next slide about the Rbanism research project:) Besides my regular research and teaching activities, I am increasingly involved in helping students and researchers like you improve their data and computational skills, so to make the important step from novices to confident and competent practitioners. I hope I can contribute to that a little bit in your case as well. 

[Slide 2 - rbanism]() - Present the broader context of the Rbanism project.

- (In general:) To build capacity, competence, and confidence for the adoption foundational data and software skills in the urbanism research community at large, i.e., TU Delft, NL and beyond;

- (With this workshop:) To train researchers in urbanism and associated fields in the practice of reproducible research and thus contributing to accelerating scientific progress in the field.

[Slide 3 - schedule]() - Briefly go over the schedule for the workshop.

[Slide 4 - getting to know you (icebraker?)]() - Getting to know you exercise and group discussion: - 6 months from now can you or someone else go back to your project and understand what was going on? What types of methods do you use to document a project? - Take notes on the board of tools people use.

### Reflection - group discussion: (5 mins)

#### From the slides:

::: boxed
-   What tools would you use (Excel / R / Python / Word / plain text etc.)?
-   How would you ensure that others can reproduce your work?
-   What would happen if your collaborator is no longer available to walk you through their analysis?
-   What would make it easy / hard for reproducing someone else's work?
-   What would have to happen if
    -   you had to swap out the dataset or extend the analysis further?
    -   you caught further data errors and had to re-create the analysis with corrections?
    -   you had to revert back to the original dataset?
:::

#### Tips for instructors:

-   Collect data from the students on their tool choice and success. Tallying these on the board creates a nice visual.
    -   If you know that the session will have a large number of participants preparing a Google Form might be useful.
-   Keep the discussion on the second set of questions to an informal discussion, and feel free to keep it short if exercise took longer than intended.

[Slides 5-6 - case studies]() 

## Case studies: Motivating reproducibility (5 mins) 

- Review a few case studies: 
  - Some are already discussed in `01-intro-slides` 
  - If you prefer to discuss others, see some examples at <https://github.com/Reproducible-Science-Curriculum/Reproducible-Science-Hackathon-Dec-08-2014/wiki/Irreproducible-Examples>

[Slides 7-9 - toolkit]() 

## Introduce toolkit (15 minutes)

-   R, RStudio, R Markdown

-   Walk through splash screens of R and RStudio (but spend more time on RStudio)

[Slide 10 - setup]()

## How do we work?

Ask participants to: 

1. Download the archive with the folder structure we will use in the workshop. 

2. Unzip the archive into a folder that they will use as their project folder. 

3. Put a green sticky on the front of their laptop if they are ready or a purple one if they need help.

[Slide 11 - demo]() 

## R Markdown demo

The goal is to demonstrate how each of the goals of Organization, Automation, Documentation, and Dissemination, can be addressed in an R Markdown document.

### Key steps introduced:

**IMPORTANT:** Emphasize that: 

- this exercise is NOT about understanding all the R commands, but rather getting the big picture of how using R in this way facilitates reproducible analyses. 
- it is NOT about understanding R Markdown in detail either. The structures and features of an R Markdown document will be explained later in the literate programming part.

Ask participants to open the file `documents/countryPick4.Rmd` and kint it.

Show the Rmd and its output side by side to demonstrate: 

- "good practice" for organizing data files and analysis documents (R Markdown) 
- How to read data from a file 
- How to manipulate the data, and document it in a reproducible way 
- How easy it would be to revert any changes if need be 
- How to subset data 
- How to make simple plots in ggplot

### Extend the analysis:

All code included in the template.

Important to emphasize we're using the same subsetting and visualization code, just with new data. Reproducing old work with new data is easy!

### Take aways:

-   The analysis is self-documenting
-   It's easy to extend or refine analyses by copying and modifying code blocks
-   The results of the analysis can be disseminated by sending R Markdown and providing data sources, or just simply providing the generated HTML of just a summary of the analysis is needed

## Reproducibility checklist:

Point them to the checklist (`checklist.md`), don't read the whole list (too long), but can discuss the documentation part if there is time.
