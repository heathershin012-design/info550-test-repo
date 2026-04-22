library(rmarkdown)

rmarkdown::render(
  input = "report/Final_project_report.Rmd",
  output_file = "Final_project_report.html",
  output_dir = "report"
)