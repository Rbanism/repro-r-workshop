# Slides start here

In the first part of the workshop, you learned about R and practiced it in RStudio. You did that by writing commands either in the console directly or in a script file. In the next part of today's workshop, I will show you another way of working with R, with R Markdown.

## What is R Markdown and why is it useful?

R Markdown is a flexible type of document that allows you to combine executable R code with its output as well as narrative. So code, output and narrative in one place. This is one of the great features of R Markdown. Those of you who have some experience with Python and came across Jupyter notebooks, R markdown is of the same kind, a so-called computational notebook.

Another important particularity is that Rmd documents can be converted to a variety of dynamic and static formats, such as PDF, Word, and html (the html slides you are looking at are generated from R Markdown).

But third, and arguably most of all, **a well-written R Markdown enables reproducibility**, meaning that you can share your Rmd file together with your data, someone else can run it and get the same results. Full reproducibility also means that, if you notice a data transcription error, or you are able to add more data to your analysis, you will be able to recompile the report without making any changes in the actual document. On the bottom of this slide you see a generic example of an Rmd file on the left and its output on the right, in this case a Word file with some text, code and plots.

## Slide with example translateing the earlier code of Barbara into Rmd

Now, before we start the demonstration, I would also like to show you another example, on a piece of code you wrote in the previous part with Barbara. Remember the exercise where you ...? Let's say I want to report my results...

...

## Demo starts

### Creating an R Markdown file

So, let's see how R Markdown works.

We continue to work in the RStudio project you created earlier today. 

Creating a new R Markdown document is very similar to how you created a script file. You do that by ... Normally, you would fill in the title, author, and output format from this dialog, but we will learn how to do this from scratch.

So after we click on create empty document, we see that, an empty document. Let's save it by clicking on the save button... assuming that this will be report, I will call it 'my-awesome-report'. You can call it anything, this is the file name and does not influence the content in any way. Make sure you save it in the `documents/` folder. If you navigate to the `documents/` folder in the File pane of RStudio, youw ill see the new file and that it ends with the .Rmd extension.

### The YAML header

Now, the first thing that makes an R Markdown document is a so-called YAML header. The YAML header is at the very beginning of the document and it is enclosed in a pair of three hyphens. [Type] Everything that we add between these hyphens is metadata, that is, information about the document. So let's add some metadata. We want our report to have a title; we specify that by typing the keyword title: and the title in quotation marks. ... I also want to specify the author of the document. I do that the same way. I will also need to specify the output: in this case I want an html_document (not in quotation marks). This is all information that would be filled in for me from the new Rmd file window (demo).

### Content

After the YAML header, I can start writing the content of the report. Now the second thing that makes an R Markdown document is the use of Markdown to add formatting elements to plain text, such as bold, italic or code. The formatting will not be immediately visible like you would see in a Word document. Instead, you add Markdown syntax to your text, which then can be converted to other formats that translate Markdown. In this case, the Markdown text will show up as formatted text in the output html document. But let's see what this means.

First, let's create a heading! ...

Demo...

Cleanup...

pdf/word... output shows up in project folder

# Ending 

So, in this part of today's workshop, I  introduced R Markdown, which, if you continue to work with R, will become an important part of your toolbox as a researcher. As you saw in this introduction, you can keep code, output, as well as notes, interpretation and write-up of your analysis in one place. Which is a great way to work in a reproducible way. 
