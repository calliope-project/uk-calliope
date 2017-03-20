.PHONY : env
env :
	conda env create --file requirements.yml

.PHONY : all_time_methods
all_time_methods : runs_time_methods bsub_time_methods

runs_time_methods :
	./generate.sh "run_config_paper_time_methods/run_*.yaml" $@

.PHONY : run_time_methods
bsub_time_methods :
	./run.sh "./runs_time_methods/*"
