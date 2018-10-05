CLUSTER_TYPE=bsub
CLUSTER_THREADS=3
CLUSTER_MEM=25G
CLUSTER_TIME=1440

run_test_scenarios.sh : model.yaml scenarios.yaml scenario_combinations_test.yaml
	calliope generate_runs $< $@ --kind=$(CLUSTER_TYPE) --override_file=$(word 2,$^) --groups_file=$(word 3,$^) --cluster_threads $(CLUSTER_THREADS) --cluster_mem $(CLUSTER_MEM) --cluster_time $(CLUSTER_TIME)

run_main_scenarios.sh : model.yaml scenarios.yaml scenario_combinations_main.yaml
	calliope generate_runs $< $@ --kind=$(CLUSTER_TYPE) --override_file=$(word 2,$^) --groups_file=$(word 3,$^) --cluster_threads $(CLUSTER_THREADS) --cluster_mem $(CLUSTER_MEM) --cluster_time $(CLUSTER_TIME)

run_weather_scenarios.sh : model.yaml scenarios.yaml scenario_combinations_weather.yaml
	calliope generate_runs $< $@ --kind=$(CLUSTER_TYPE) --override_file=$(word 2,$^) --groups_file=$(word 3,$^) --cluster_threads $(CLUSTER_THREADS) --cluster_mem $(CLUSTER_MEM) --cluster_time $(CLUSTER_TIME)

