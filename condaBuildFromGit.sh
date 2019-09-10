#!/bin/bash

# A small script to build conda packages directly from the git repo.
# Clones the repo and call conda build on the recipe within the repo
# The build artifact if any is automatically placed in the DM channel
# located here - /reg/g/psdm/sw/dmconda/channels/rhel7
# To later install a package from here - use something like so 
# conda install -c /reg/g/psdm/sw/dmconda/channels/rhel7 <packagename>


die() {
  echo "$1" 2>&1
  exit 1
}

[ "$#" -eq 1 ] || die "Please specify the location of the git repo for the package"

export REPO_URL=$1

source /reg/g/psdm/sw/dmconda/etc/profile.d/conda.sh

export DM_CHANNEL_PATH=/reg/g/psdm/sw/dmconda/channels/rhel7

export PACKAGENAME=`basename ${REPO_URL} .git`

cd /tmp
export TEMPFOLDER=`mktemp -d condaBuild_XXX`

pushd ${TEMPFOLDER}

function cleanup {
  popd
  echo "Cleaning up folder `pwd`/${TEMPFOLDER}"
  rm -rf "${TEMPFOLDER}"
}

trap cleanup EXIT

echo "Building package ${PACKAGENAME} in `pwd`"

git clone --recursive ${REPO_URL}

export FULL_PATH_TO_RECIPE=`pwd`/${PACKAGENAME}/recipe

[ -d "${FULL_PATH_TO_RECIPE}" ] || die "Missing recipe in package ${FULL_PATH_TO_RECIPE}"

conda build \
    --py 3.7 \
    --no-anaconda-upload \
    --skip-existing \
    --no-locking \
    --channel conda-forge \
    --croot ${DM_CHANNEL_PATH} \
    ${FULL_PATH_TO_RECIPE}


cd ..

echo "Done building"

