# Final Project

## Dataset
This project uses the Sleep Health and Lifestyle Dataset located in the `data/` folder.

## Project Structure
- `code/01_clean_data.R`: cleans raw data and saves `output/data_clean.rds`
- `code/02_make_table.R`: creates summary table (`output/table1.rds`)
- `code/03_make_figure.R`: creates figure (`output/figure1.png`)
- `code/04_render_report.R`: renders final report
- `report/Final_project_report.Rmd`: report source file

## Output
- Cleaned data: `output/data_clean.rds`
- Table: `output/table1.rds`
- Figure: `output/figure1.png`
- Final report will be created in `report/Final_project_report.html`

## Run Locally

To generate the full report locally, run:

```bash
make
```


# how to build the Docker image 

build docker image(terminal): 

Run the following command in the terminal:  

docker build -t heathershin012/finalproject6 .

make sure you put your Dockerhub username+image name 


## Run the project(mac)

To generate the report:

make docker_report

The compiled report will be saved in the `report/` folder.

Mac: docker run -it -v "$(pwd)/final_report":/project/final_report project_imagebash

###Push to Dockhub

docker push heathershin012/finalproject6:latest

###Push to Github
To upload your project to GitHub, run the following commands in your project directory:

```bash
git add .
git commit -m "Final project submission"
git push origin main
```
git remote add origin https://github.com/heathershin012/finalproject6.git 

