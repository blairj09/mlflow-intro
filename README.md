# Introduction to mlflow with R

This repository contains a collection of resources for introducing
[mlflow](https://mlflow.org/) to the R user.

[![Title Slide](img/title-slide.png)](slides/mlflow-intro-slides.pdf)

---

## Usage
This repository uses [`renv`](https://rstudio.github.io/renv/index.html) to
manage R package dependencies. Necessary R packages can be installed using
`renv::restore()`.

Since this package also depends on `mlflow`, `mlflow::mlflow_install()` will
need to be run once in order to setup the `mlflow` conda environment.
