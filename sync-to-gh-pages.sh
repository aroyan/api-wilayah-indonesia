#!/usr/bin/env bash
set -e

git add static/api
git commit -m "Update API data" || true

rm -rf ../gh-pages/*
cp -r static/api ../gh-pages/api

cd ../gh-pages
git add .
git commit -m "Deploy API" || true
git push origin gh-pages
