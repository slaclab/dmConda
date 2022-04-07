#!/bin/bash -x

# Note simply executing this in a conda environment will not work; as the /bin/bash above will place this script outside the context of a conda environment.
# Sourcing this script after activating the conda environment seems to work


# Install some basic python libraries
conda install -y -c anaconda -c conda-forge --freeze-installed flask gunicorn eventlet flask-socketio pymongo kafka-python requests cachetools apscheduler sqlitedict
conda install -y -c conda-forge --freeze-installed icalendar openpyxl python-docx reportlab google-api-python-client google-auth-httplib2 google-auth-oauthlib authlib

# Picked up typed_json for the config_db service
conda install -y --freeze-installed --freeze-installed numpy 
conda install -y -c /reg/g/psdm/sw/dmconda/channels/rhel7 --freeze-installed typed_json

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

npm install --global express http-proxy-middleware client-certificate-auth jsonwebtoken http-proxy

