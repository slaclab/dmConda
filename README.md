# dmConda
This repo contains scripts and information for building packages, creating and managing conda environments for PCDS Data Management.
To use the PCDS DM conda, 
```
source /reg/g/psdm/sw/dm/conda/etc/profile.d/conda.sh
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
 
### Creating new conda environments
New conda environments are created as `psrel`. To create a new conda environment `newEnv`, 
```
ssh psrel@pslogin
source /reg/g/psdm/sw/dm/conda/etc/profile.d/conda.sh
conda create -n newEnv python=3 
conda activate newEnv
```
New packages can be installed in this environment using `conda install`, `pip install` or `npm install`.
The current list of packages in a standard PCDS DM environment is maintained in the script `installStdPackages.sh`.
So, to build a environment with the latest versions of dependent packages, run `source ./installStdPackages.sh` after activating the new enviroment.

# App specific way to do this. 
Attempt to move away from conda for the environments for the web services.
The reason is that most deployments outside of PCDS ( including Cryo, k8s) prefer
package specifications using requirements.txt and package.json and conda simply gets in the way.
One can maybe create an environment using conda and then install inside this environment using pip3 and npm
For example,
```
conda create --prefix=/cds/group/psdm/sw/dm/conda/envs/ws_lgbkbs5_Feb2024  python=3.11
conda activate /cds/group/psdm/sw/dm/conda/envs/ws_lgbkbs5_Feb2024
cd /cds/group/psdm/sw/dm/conda/envs/ws_lgbkbs5_Feb2024
# Copy requirements.txt from application now
pip3 install -r requirements.txt
conda install -c conda-forge nodejs
cd lib
# Copy package.json from application now
npm install
```






