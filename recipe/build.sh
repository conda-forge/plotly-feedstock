#!/usr/bin/env bash
set -ex

$PYTHON -m pip install . -vv
npm pack jupyterlab-plotly@4.11.0
mkdir -p ${PREFIX}/share/jupyter/lab/extensions/js
cp jupyterlab-plotly@4.11.0.tgz ${PREFIX}/share/jupyter/lab/extensions/js
