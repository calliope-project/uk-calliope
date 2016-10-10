[![CC BY-SA](https://img.shields.io/badge/license-CC%20BY--SA-green.svg)](#license)

# UK-Calliope model

This is the model used to generate the results reported in: Stefan Pfenninger and James Keirstead (2015). Renewables, nuclear, or fossil fuels? Scenarios for Great Britain's power system considering costs, emissions and energy security. _Applied Energy_, 152, pp. 83–93. [doi: 10.1016/j.apenergy.2015.04.102](http://dx.doi.org/10.1016/j.apenergy.2015.04.102)

## Installation

To install, it is recommended to follow the [instructions for installing Calliope](http://docs.callio.pe/en/stable/user/installation.html), which includes installation of the [Anaconda Python distribution](https://www.continuum.io/downloads).

The [requirements.yml](requirements.yml) file lists the required packages to run the model with the most recent stable version of the Calliope framework.

## Overview

The model configuration is in the directory `model_config`.

Simple run configuration files are in `run_config_simple`:

* `run_planning.yaml`: Run model 1 in planning mode with 6-hourly timesteps
* `run_op_2012.yaml`: Run 2012 power system in operational mode

Run configuration files used for Pfenninger and Keirstead (2015) are in `run_config_paper`. For the paper, the model was run with [Calliope framework version 0.3.4](https://github.com/calliope-project/calliope/tree/v0.3.4).

### Zones

<img src="zones.png" alt="Zone Map" width="300px">

A [shapefile](shapefile.zip) with polygons of the zones used is included.

### Setting up the run environment on a cluster

A `cluster_environment.yaml` file needs to be set up for the cluster computing platform on which the models will be run. See the included `cluster_environment_example.yaml` file.

## Sources

See [Sources](SOURCES.md) for data sources used.

## How to cite

If you use this model or work derived from it in an academic publication, please cite the following paper:

Stefan Pfenninger and James Keirstead (2015). Renewables, nuclear, or fossil fuels? Scenarios for Great Britain's power system considering costs, emissions and energy security. _Applied Energy_, 152, pp. 83–93. [doi: 10.1016/j.apenergy.2015.04.102](http://dx.doi.org/10.1016/j.apenergy.2015.04.102)

If you use the included PV resource data, please cite: Stefan Pfenninger and Iain Staffell (2016). Long-term patterns of European PV output using 30 years of validated hourly reanalysis and satellite data. _Energy_ 114, pp. 1251-1265. [doi: 10.1016/j.energy.2016.08.060](https://dx.doi.org/10.1016/j.energy.2016.08.060)

If you use the included wind resource data, please cite: Iain Staffell and Stefan Pfenninger (2016). Using Bias-Corrected Reanalysis to Simulate Current and Future Wind Power Output. _Energy_ 114, pp. 1224-1239. [doi: 10.1016/j.energy.2016.08.068](https://dx.doi.org/10.1016/j.energy.2016.08.068)

## License

Copyright (c) 2014-2016 Stefan Pfenninger

Wind resource data: Copyright (c) 2014 Iain Staffell

[![Creative Commons License](https://i.creativecommons.org/l/by-sa/4.0/88x31.png)](https://creativecommons.org/licenses/by-sa/4.0/)

This work (with exceptions listed below) is licensed under a [Creative Commons Attribution-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-sa/4.0/).

License exceptions:

* Electricity demand data (from National Grid at http://www.nationalgrid.com/uk/Electricity/Data/Demand+Data/) is not included in this license
