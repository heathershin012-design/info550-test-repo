# Final Project

## Dataset
This project uses the Sleep Health and Lifestyle Dataset located in the `data/` folder.

## Project Structure
- `code/01_clean_data.R`: cleans raw data and saves `output/data_clean.rds`
- `code/02_make_table.R`: creates summary table (`output/table1.rds`)
- `code/03_make_figure.R`: creates figure (`output/figure1.png`)
- `code/04_render_report.R`: renders final report
- `report/Final_project_report.Rmd`: report source file
- `report/Final_project_report.html`: final rendered report

## Output
- Cleaned data: `output/data_clean.rds`
- Table: `output/table1.rds`
- Figure: `output/figure1.png`
- Final report: `report/Final_project_report.html`

## How to Run the final report
To generate the full report, run:

```bash
make
```


## Package setup

To restore the project package environment, run:

```bash
make install

