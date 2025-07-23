#########
# general script for setting up environment in R
#########

# load libraries
library('cowplot')
library('geomtextpath')
library('ggeffects')
library('grid')
library('gridExtra')
library("jsonlite")
library('tidyverse')
library('openalexR')
library('parallel')
library('lme4')
library('lmerTest')

# set plotting theme
theme_set(theme_classic())

# turn off scientific notation
options(scipen = 999)

# set seed for reproducibility
set.seed(1967)