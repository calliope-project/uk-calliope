[![CC BY-SA](https://img.shields.io/badge/license-CC%20BY--SA-green.svg)](#license)

# UK-Calliope model

This is the model used to generate the results reported in: Stefan Pfenninger and James Keirstead.  2015.  Renewables, nuclear, or fossil fuels? Scenarios for Great Britain's power system considering costs, emissions and energy security.  _Applied Energy_.  [doi: 10.1016/j.apenergy.2015.04.102](http://dx.doi.org/10.1016/j.apenergy.2015.04.102)

The model was run with [Calliope framework version 0.3.4](https://github.com/calliope-project/calliope/tree/v0.3.4).

## Overview

The model configuration is in the directory `model_config`.

Simple run configuration files are in `run_config_simple`:

* `run_planning.yaml`: Run model 1 in planning mode with 6-hourly timesteps
* `run_op_2012.yaml`: Run 2012 power system in operational mode

Run configuration files used for Pfenninger and Keirstead (2015) are in `run_config_paper`.

### Zones

![Zone Map](zones.png)

A [shapefile](shapefile.zip) with polygons of the zones used is included.

### Setting up the run environment on a cluster

A `cluster_environment.yaml` file needs to be set up for the cluster computing platform on which the models will be run. See the included `cluster_environment_example.yaml` file.

## Sources

See [Sources](SOURCES.md) for data sources used.

## License

Copyright (c) 2014-2015 Stefan Pfenninger

Wind resource data: Copyright (c) 2014 Iain Staffell

[![Creative Commons License](https://i.creativecommons.org/l/by-sa/4.0/88x31.png)](https://creativecommons.org/licenses/by-sa/4.0/)

This work (with exceptions listed below) is licensed under a [Creative Commons Attribution-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-sa/4.0/).

If you use this model or work derived from it in an academic publication, please cite the following paper:

Stefan Pfenninger and James Keirstead.  2015.  Renewables, nuclear, or fossil fuels? Scenarios for Great Britain's power system considering costs, emissions and energy security.  _Applied Energy_.  [doi: 10.1016/j.apenergy.2015.04.102](https://dx.doi.org/10.1016/j.apenergy.2015.04.102)

If you use the included wind resource data, please cite the following paper:

Iain Staffell and Richard Green.  2014.  How Does Wind Farm Performance Decline with Age?  _Renewable Energy_, 66, 775–786.  [doi: 10.1016/j.renene.2013.10.041](https://dx.doi.org/10.1016/j.renene.2013.10.041)

License exceptions:

* Electricity demand data (from National Grid at http://www.nationalgrid.com/uk/Electricity/Data/Demand+Data/) is not included in this license
