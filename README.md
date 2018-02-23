# dmConda
This repo contains scripts and information for building packages, creating and managing conda environments for PCDS Data Management.
To use the PCDS DM conda, 
```
source /reg/g/psdm/sw/dmconda/etc/profile.d/conda.sh
```
and then use `conda activate <env>` to activate the named environment.
A list of conda envs can be obtained using `conda info --envs`.


### Building conda packages directly from GitHub.
For home-grown packages that have conda recipes, use `condaBuildFromGit.sh` to
build and register the build artifact with the DM custom channel at `/reg/g/psdm/sw/dmconda/channels/rhel7`.
For example, 
```
./condaBuildFromGit.sh https://github.com/slaclab/flask_socket_util.git
```
builds and registers `flask_socket_util`. The version used for the built artifact is determined by the version/tag in the `meta.yaml`.

To later install the built artifact into your environment, `conda activate` your enviromnent and use `conda install` like so
```
conda install -c /reg/g/psdm/sw/dmconda/channels/rhel7 flask_socket_util
```
 






