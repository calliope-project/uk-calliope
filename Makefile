CLUSTER_TYPE=bsub
CLUSTER_THREADS=3
CLUSTER_MEM=25G
CLUSTER_TIME=1440

run_test_scenarios.sh :
	calliope generate_runs model.yaml $@ --override_dict="import: [scenarios_test.yaml]" --kind=$(CLUSTER_TYPE) --cluster_threads $(CLUSTER_THREADS) --cluster_mem $(CLUSTER_MEM) --cluster_time $(CLUSTER_TIME)

run_main_scenarios.sh :
	calliope generate_runs model.yaml $@ --override_dict="import: [scenarios_main.yaml]" --kind=$(CLUSTER_TYPE) --cluster_threads $(CLUSTER_THREADS) --cluster_mem $(CLUSTER_MEM) --cluster_time $(CLUSTER_TIME)

run_weather_scenarios.sh :
	calliope generate_runs model.yaml $@ --override_dict="import: [scenarios_weather.yaml]" --kind=$(CLUSTER_TYPE) --cluster_threads $(CLUSTER_THREADS) --cluster_mem $(CLUSTER_MEM) --cluster_time $(CLUSTER_TIME)

.PHONY : scenarios
scenarios : scenarios_test.yaml scenarios_main.yaml scenarios_weather.yaml

scenarios_test.yaml :
	calliope generate_scenarios model.yaml $@ "run_cluster" "base;no_imports;double_imports" "cost_batt_high;cost_batt_low;cost_batt_breakthrough" "run_test_w2012;run_test_w2014" "r30;r60;r99;r100"

scenarios_main.yaml :
	calliope generate_scenarios model.yaml $@ "run_cluster" "base;no_imports;double_imports;new_nuclear" "cost_batt_high;cost_batt_low;cost_batt_breakthrough" "worst_year;best_year" "r30;r40;r50;r60;r70;r80;r90;r99;r100"

scenarios_weather.yaml :
	calliope generate_scenarios model.yaml $@ "run_cluster" "base" "cost_batt_high;cost_batt_low;cost_batt_breakthrough" "w1990;w1991;w1992;w1993;w1994;w1995;w1996;w1997;w1998;w1999;w2000;w2001;w2002;w2003;w2004;w2005;w2006;w2007;w2008;w2009;w2010;w2011;w2012;w2013;w2014" "r30;r60;r90"

