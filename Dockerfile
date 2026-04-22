FROM rocker/tidyverse:4.5.1

RUN apt-get update && apt-get install -y pandoc && rm -rf /var/lib/apt/lists/*

WORKDIR /home/rstudio/project

COPY . /home/rstudio/project

RUN Rscript -e "install.packages('renv', repos='https://cloud.r-project.org')" && \
    Rscript -e "renv::restore(prompt = FALSE)"

CMD ["make", "report"]