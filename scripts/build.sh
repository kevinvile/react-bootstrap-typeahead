#!/bin/sh

# Build minified standalone version in dist
rm -rf dist
webpack
webpack --config ./webpack.config.prod.js

# Build ES5 modules to lib
rm -rf lib
babel ../src --out-dir ../lib

# Build example file
webpack --config ../example/webpack.config.example.prod.js
