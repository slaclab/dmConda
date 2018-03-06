#!/bin/bash

# Install some basic python libraries
conda install -c conda-forge requests
conda install flask
conda install -c conda-forge flask-socketio
conda install -c conda-forge gunicorn 
conda install -c conda-forge eventlet

conda install pymysql
conda install -c conda-forge kafka-python

conda install -c conda-forge cachetools

# PyMongo is not yet present in conda
pip install pymongo

# Use node for Javascript libraries
conda install -c conda-forge nodejs


# Libraries to talk to the various web services/questionnaire
conda install -c pcds-tag krtc
conda install -c pcds-tag psdm_qs_cli


# Home grown packages from the DM conda channel.
conda install -c /reg/g/psdm/sw/dmconda/channels/rhel7 flask_mysql_util
conda install -c /reg/g/psdm/sw/dmconda/channels/rhel7 flask_socket_util
conda install -c /reg/g/psdm/sw/dmconda/channels/rhel7 flask_authzn


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






