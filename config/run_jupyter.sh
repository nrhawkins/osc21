#!/bin/bash

cd ~
mkdir .jupyter


# copy the jupyter configuration into home-directory
cp -r ${CONFIG_PATH}/jupyter_notebook_config.py ~/.jupyter/

# load the python libraries
mkdir .ipython
cd .ipython && mkdir profile_default
cd profile_default && mkdir startup


cp -r ${CONFIG_PATH}/start.py  ~/.ipython/profile_default/startup/

cd ${MAIN_PATH}

cp -r ${MAIN_PATH}/.ssh/  /root/.ssh
ssh-add /root/.ssh/id_ed2559


#mkdir notebooks

jupyter lab