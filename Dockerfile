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
    quantmod \
    swirl

    
 # make a directory for tidy and wrangling unit
RUN mkdir -p /home/ids_materials/tidy_unit && chown -R rstudio /home/ids_materials 

# download the datasets for the tidy unit
RUN cd /home/ids_materials/tidy_unit && \
  git clone https://github.com/hadley/tidyr.git && \
  mv tidyr/vignettes example_data && \ 
  rm -rf tidyr

    
    
    

