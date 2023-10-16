OUTPUT = ../../gen/paper
ANALYSIS = ../../gen/analysis

all: $(OUTPUT)/plot_all.pdf

$(OUTPUT)/plot_all.pdf: $(ANALYSIS)/pivot_table.csv plot_data.R
	R --vanilla < plot_data.R