---
  layout: nil
title: R setup
---
  
### Download R
  
  If you don't already have R on your computer, go [here](http://archive.linux.duke.edu/cran/) and select your operating system.

What you click next differs depending on the operating system you selected:
If windows, select base
If Mac, select R-3.6.1.pkg
If Linux, I have no idea, hopefully that page makes sense to you.

Follow any instructions during setup.

### R studio

This step is not necessary. If you like working with R in its native console, then there is nothing in this class that will impede you.
I will be running tutorials in RStudio. RStudio is an integrated development environment, which is a fancy way of saying it puts lots
of things at your finger tips that might be useful when you're coding.

If you want to use RStudio, then in addition to downloading R (step above), you must also download RStudio.

[Click here](https://www.rstudio.com/products/rstudio/) to go to the RStudio page
Click Rstudio Desktop (or scroll down to it)


You want the open source edition. Click Download RStudio Desktop.
Pick the free one
Under "Installers for Supported Platforms" click your operating system.
Install

### Did it work?

If it worked, you should be able to use R when you open RStudio.You will see several different panes. In the bottom left should be
one called "Console". It should have a bunch of information about the version of R you are using. At the prompt, type: 3 + 4
Did it work? If yes, you're good. If anything in this section isn't true for you, then its possible that Rstudio can't find R. Bring it to class and we'll see what we can do.

### Installing packages

What you downloaded was what is called "base R". These are the basic functions built into R. People often want to expand and share code they have written in R and they share these via things called "packages"

The most common way to share R packages is through CRAN (which is a repository for R packages). If I saw, install package X for a class, without any other instructions, then the package is on CRAN.
To install a package from CRAN on your computer, you can either do it through RStudio or through the R console. 

CRAN instructions

RStudio:
* Click Tools in the top bar.
* Select Install packages
* Type the name of the package
* Click install

R Console:
type: install.packages("name")


There is at least one package we will be installing from a different source. Instructions will be given when we get to that!

### For Mac Users: Command Line Tools or xcrun errors
One of the packages we use require Apple products to have the Command Line Tools installed. If you see an error about Command Line Tools or xcrun, then follow these steps:
* Install Xcode from the App Store on Mac
* Once Xcode is installed, open a terminal window and type in: Xcode-select --install
* This should install the command line developer tools that some of the R packages need to run.
