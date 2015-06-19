FROM rocker/ropensci
MAINTAINER Hector Corrada Bravo <hcorrada@gmail.com>


# install datasets from ISL
RUN install2.r --error \
    ISLR \
    gapminder \
    cvTools \
    tree \
    e1071 \
    ROCR \
    randomForest

# install hadley's excel reader package
RUN installGithub.r \
    hadley/readxl

# financial data package
RUN install2.r --error \
    quantmod
    
    
    

