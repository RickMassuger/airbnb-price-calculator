OUTPUT = ../../gen/data-preparation
ANALYSIS = ../../gen/analysis

all: $(ANALYSIS)/pivot_table.csv

$(ANALYSIS)/pivot_table.csv: $(OUTPUT)/aggregated_df.csv analyze_data.R
	R --vanilla < analyze_data.R