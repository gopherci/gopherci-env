#!/usr/bin/env bash

# Installs dependencies for projects by detecting the vendoring tool in use
#

# Detect vendoring tool and install dependencies
if [[ -f 'manifest.json' ]]; then
	echo 'Vendor tool detected as dep'
	dep ensure
elif [[ -f 'glide.yaml' ]]; then
	echo 'Vendor tool detected as glide'
	glide install
elif [[ -f 'vendor.json' ]]; then
    echo 'Vendor tool detected as govendor'
    govendor sync
elif [[ -f 'Godeps/Godeps.json' ]]; then
    echo 'Vendor tool detected as godep'
    godep restore
else
    echo 'No (or unsupported) vendoring tool, using go get'
	go get -t ./...
fi
