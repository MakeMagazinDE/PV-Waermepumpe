#!/bin/bash


curl -fsSL https://get.Docker.com -o get-Docker.sh
sh get-Docker.sh
usermod -aG docker $USER
newgrp docker