[![Build Status](https://travis-ci.com/rr-mrc-bsu/build-automation-example.svg?branch=master)](https://travis-ci.com/rr-mrc-bsu/build-automation-example)

# Small working example for using build automation tools

This repository contains materials referred in the [build automation chapter](https://rr-mrc-bsu.github.io/reproducible-research/build-automation.html) 
of the ['Reproducible Research Compendium'](https://rr-mrc-bsu.github.io/reproducible-research/).



## Quickstart

clone the repository and play around with make!



## Folder structure

```
|   # the folder holding raw data
├── data 
│   └── iris.csv # jus a .csv version of the famous iris data set
|   
|   # markdown files for reports
├── reports
│   ├── data-preparation.Rmd
│   └── analysis.Rmd
|
|   # additional R scripts for stuff that is too ugly/long running for .Rmd
├── scripts
│   └── load-data.R
|   
├── .gitignore # define what we ignore in this repository
├── .travis.yml # cf. chapter 'continuous integration'
├── DESCRIPTION # makes Travis-CI believe this is an R package,  cf. chapter 'continuous integration'
├── Makefile # actual makefile defining the individual build steps
└── README.md # the file you are looking at right now
```
