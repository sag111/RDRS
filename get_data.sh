#!/bin/bash

# Download dataset
wget "https://sagteam.ru/RDRS/RDRS_v3_folds.tar.gz" -P ./data/

# Extract prepare files from an archive
tar -xzvf ./data/RDRS_v3_folds.tar.gz -C ./data/

# Remove an archive
rm -f ./data/RDRS_v3_folds.tar.gz
