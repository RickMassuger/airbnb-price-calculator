OUTPUT = ../../gen/data-preparation

all: $(OUTPUT)/listings.csv $(OUTPUT)/reviews.csv

$(OUTPUT)/listings.csv $(OUTPUT)/reviews.csv: download_data.R
	R --vanilla < download_data.R

$(OUTPUT)/aggregated_df.csv: $(OUTPUT)/listings.csv $(OUTPUT)/reviews.csv clean_data.R
	R --vanilla < clean_data.R