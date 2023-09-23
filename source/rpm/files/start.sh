#!/bin/bash
cd ./prometheus_flask_exporter-0.22.4
fpm --python-bin=python3 -s python -t rpm --python-package-name-prefix python3 --depends "python3 >= 3.6" --name prometheus-flask-exporter-pkg-rpm setup.py
cp -r ./*.rpm /Module/files/packet/
