IMAGE_NAME=heathershin012-design/finalproject6
CONTAINER_REPORT_DIR=/home/rstudio/project/report

.PHONY: all install report docker-build docker-run docker-run-windows

report:
	Rscript code/01_clean_data.R
	Rscript code/02_make_table.R
	Rscript code/03_make_figure.R
	Rscript code/04_render_report.R

all: report

install:
	Rscript -e "renv::restore(prompt = FALSE)"

docker-build:
	docker build -t $(IMAGE_NAME) .

docker-run:
	mkdir -p report
	docker run --rm -v "$$(pwd)/report:$(CONTAINER_REPORT_DIR)" $(IMAGE_NAME)

docker-run-windows:
	mkdir -p report
	docker run --rm -v "//$$(pwd)/report:$(CONTAINER_REPORT_DIR)" $(IMAGE_NAME)