all: output/analysis.html

clean:
	rm -rf output # remove complete output
	(cd reports && rm -f !\(*.Rmd\)) # remove all non-.Rmd files

output/iris.rds: data/iris.csv scripts/load-data.R
	mkdir -p output
	Rscript scripts/load-data.R data/iris.csv output/iris.rds



output/data-preparation.html output/data-preparation-figures.zip output/iris_mod.rds: output/iris.rds reports/data-preparation.Rmd
	# render the .Rmd file, all paths must be relative to .Rmd!
	Rscript -e "rmarkdown::render(\
input       = 'reports/data-preparation.Rmd',\
output_file = 'data-preparation.html',\
output_dir  = 'output',\
params      = list(datafile = '../output/iris.rds', outputpath = '../output')\
)"
	# rename figures.zip
	mv output/figures.zip output/data-preparation-figures.zip



output/analysis.html: output/iris_mod.rds reports/analysis.Rmd
	# render the .Rmd file, all paths must be relative to .Rmd!
	Rscript -e "rmarkdown::render(\
input       = 'reports/analysis.Rmd',\
output_file = 'analysis.html',\
output_dir  = 'output',\
params      = list(datafile = '../output/iris_mod.rds', outputpath = '../output')\
)"
