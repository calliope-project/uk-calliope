#!/bin/sh

for i in ${1}; do calliope generate --debug ${i} ${2}; done
