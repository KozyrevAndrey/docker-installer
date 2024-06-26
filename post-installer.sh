#!/bin/bash

# Create the docker group
sudo groupadd docker

# Add your user to the docker group
sudo usermod -aG docker $USER

# Verify
docker run hello-world

# Start on boot with systemmd
sudo systemctl enable docker.service
sudo systemctl enable containerd.service
