#!/bin/bash -x

# Note simply executing this in a conda environment will not work; as the /bin/bash above will place this script outside the context of a conda environment.
# Sourcing this script after activating the conda environment seems to work


# Install some basic python libraries
conda install -y -c conda-forge requests
conda install -y flask
conda install -y -c conda-forge flask-socketio
conda install -y -c conda-forge gunicorn 
conda install -y -c conda-forge eventlet

conda install -y pymysql
conda install -y -c conda-forge kafka-python

conda install -y -c conda-forge cachetools
conda install -y -c conda-forge apscheduler

# PyMongo is not yet present in conda
pip install  pymongo

# Use node for Javascript libraries
conda install -y -c conda-forge nodejs


# Libraries to talk to the various web services/questionnaire
conda install -y -c pcds-tag krtc
conda install -y -c pcds-tag psdm_qs_cli


# Home grown packages from the DM conda channel.
conda install -y -c /reg/g/psdm/sw/dmconda/channels/rhel7 flask_mysql_util
conda install -y -c /reg/g/psdm/sw/dmconda/channels/rhel7 flask_socket_util
conda install -y -c /reg/g/psdm/sw/dmconda/channels/rhel7 flask_authzn


# Install Javascript packages using npm
npm install --global  jquery
npm install --global  jquery.noty.packaged.js
npm install --global  lodash
npm install --global  moment
npm install --global  mustache
npm install --global  socket.io
npm install --global  socket.io-client

npm install --global  plotly.js

npm install --global  bootstrap@3.3.7
npm install --global  eonasdan-bootstrap-datetimepicker@4.17.47






