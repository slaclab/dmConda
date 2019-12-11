#!/bin/bash -x

# Note simply executing this in a conda environment will not work; as the /bin/bash above will place this script outside the context of a conda environment.
# Sourcing this script after activating the conda environment seems to work


# Install some basic python libraries
conda install -y -c conda-forge requests
conda install -y -c conda-forge flask gunicorn eventlet
conda install -y -c conda-forge flask-socketio

conda install -y pymysql
conda install -y -c conda-forge kafka-python

conda install -y -c conda-forge cachetools apscheduler icalendar openpyxl 

# Libraries to talk to the various web services/questionnaire
#conda install -y -c pcds-tag krtc psdm_qs_cli
conda install -y -c /reg/g/psdm/sw/dmconda/channels/rhel7 krtc psdm_qs_cli


# Home grown packages from the DM conda channel.
# conda install -y -c /reg/g/psdm/sw/dmconda/channels/rhel7 flask_mysql_util
conda install -y -c /reg/g/psdm/sw/dmconda/channels/rhel7 flask_socket_util flask_authzn

# PyMongo is not yet present in conda
conda install -y -c anaconda pymongo

# Use node for Javascript libraries
conda install -y -c conda-forge nodejs
npm install -g npm



# Install Javascript packages using npm
npm install --global  jquery
npm install --global  noty
npm install --global  lodash
npm install --global  moment
npm install --global  moment-timezone
npm install --global  mustache
npm install --global  socket.io
npm install --global  socket.io-client

npm install --global  plotly.js

npm install --global  bootstrap
npm install --global  tempusdominus-core
npm install --global  tempusdominus-bootstrap-4
npm install --global  popper.js
npm install --global  @fortawesome/fontawesome-free
npm install --global  summernote
npm install --global  selectize






