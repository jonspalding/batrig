#!/usr/bin/env bash

git tag -a $1 -m "Tagging $1"
git push --tags
