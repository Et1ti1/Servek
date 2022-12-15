#!/bin/bash
#instalação do hydra
clear
apt update
apt upgrade
git clone https://github.com/isuruwa/T-HYDRA
cd T-HYDRA
bash thyins.sh
cd ..
bash bruteforce.sh