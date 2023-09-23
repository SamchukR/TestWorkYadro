#!/bin/sh
cp stdeb.cfg prometheus_flask_exporter-0.22.4/
cd ./prometheus_flask_exporter-0.22.4
python3 setup.py --command-packages=stdeb.command bdist_deb
cp -r ./deb_dist/*.deb /Module/files/packet/
