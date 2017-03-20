[![CC BY-SA](https://img.shields.io/badge/license-CC%20BY--SA-green.svg)](#license)

# UK-Calliope model

## Installation

To install, it is recommended to follow the [instructions for installing Calliope](http://docs.callio.pe/en/stable/user/installation.html), which includes installation of the [Anaconda Python distribution](https://www.continuum.io/downloads).

The included requirements.yml files list the required packages to run different versions of the model.

## Overview

Example run configuration files are in `run_config_example`:

* `run_planning.yaml`: Run a simple future scenario in planning mode with 6-hourly timesteps
* `run_op_2012.yaml`: Run 2012 power system in operational mode

### Version used in Pfenninger (2017)

The revision tagged [paper-pfenninger-2017](https://github.com/sjpfenninger/uk-calliope/tree/paper-pfenninger-2017) was used to generate the results reported in Pfenninger (2017), [doi: 10.1016/j.apenergy.2017.03.051](http://dx.doi.org/10.1016/j.apenergy.2017.03.051).

The model was run with [Calliope framework version 0.4.0](https://github.com/calliope-project/calliope/tree/v0.4.0).

Model configuration is in the directory `model_config_paper_time_methods`. Run configuration files are in `run_config_paper_time_methods`. 

### Version used in Pfenninger and Keirstead (2015)

The revision tagged [paper-pfenninger-keirstead-2015](https://github.com/sjpfenninger/uk-calliope/tree/paper-pfenninger-keirstead-2015) was used to generate the results reported in Pfenninger and Keirstead (2015), [doi: 10.1016/j.apenergy.2015.04.102](http://dx.doi.org/10.1016/j.apenergy.2015.04.102).

The model was run with [Calliope framework version 0.3.4](https://github.com/calliope-project/calliope/tree/v0.3.4).

Model configuration is in the directory `model_config_paper_uk_scenarios`. Run configuration files are in `run_config_paper_uk_scenarios`. 

### Zones

<img src="zones.png" alt="Zone Map" width="250px">

A [GeoJSON file](zones.geojson) and a [shapefile](zones.zip) with polygons of the zones used are included.

### Setting up the run environment on a cluster

A `cluster_environment.yaml` file needs to be set up for the cluster computing platform on which the models will be run. See the included `cluster_environment_example.yaml` files.

## How to cite

If you use this model or work derived from it in an academic publication, please cite the following paper:

Stefan Pfenninger (2017). Dealing with multiple decades of hourly wind and PV time series in energy models: a comparison of methods to reduce time resolution and the planning implications of inter-annual variability. _Applied Energy_. [doi: 10.1016/j.apenergy.2017.03.051](https://dx.doi.org/10.1016/j.apenergy.2017.03.051)

If you use the included PV resource data, please cite: Stefan Pfenninger and Iain Staffell (2016). Long-term patterns of European PV output using 30 years of validated hourly reanalysis and satellite data. _Energy_ 114, pp. 1251-1265. [doi: 10.1016/j.energy.2016.08.060](https://dx.doi.org/10.1016/j.energy.2016.08.060)

If you use the included wind resource data, please cite: Iain Staffell and Stefan Pfenninger (2016). Using Bias-Corrected Reanalysis to Simulate Current and Future Wind Power Output. _Energy_ 114, pp. 1224-1239. [doi: 10.1016/j.energy.2016.08.068](https://dx.doi.org/10.1016/j.energy.2016.08.068)

## Sources

See [Sources](SOURCES.md) for data sources used.

## License

Copyright (c) 2014-2017 Stefan Pfenninger

Wind resource data: Copyright (c) 2014-2017 Iain Staffell

[![Creative Commons License](https://i.creativecommons.org/l/by-sa/4.0/88x31.png)](https://creativecommons.org/licenses/by-sa/4.0/)

This work (with exceptions listed below) is licensed under a [Creative Commons Attribution-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-sa/4.0/).

License exceptions:

* Electricity demand data (from National Grid at http://www.nationalgrid.com/uk/Electricity/Data/Demand+Data/) is not included in this license
