CLUSTER_TYPE=bsub
CLUSTER_THREADS=3
CLUSTER_MEM=25G
CLUSTER_TIME=1440

run_renewable_shares.sh : model.yaml example_scenarios.yaml
	calliope generate_runs $< $@ --kind=$(CLUSTER_TYPE) --override_file=$(word 2,$^) --groups "run_cluster,r30;run_cluster,r40;run_cluster,r50;run_cluster,r60;run_cluster,r70;run_cluster,r80;run_cluster,r90" --cluster_threads $(CLUSTER_THREADS) --cluster_mem $(CLUSTER_MEM) --cluster_time $(CLUSTER_TIME)
