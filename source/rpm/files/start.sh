#!/bin/bash
cd ./prometheus_flask_exporter-0.22.4
fpm --python-bin=python3 -s python -t rpm setup.py
cp -r ./*.rpm /Module/files/packet/
