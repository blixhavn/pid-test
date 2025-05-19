#!/bin/bash

kind create cluster --name pidtest

read -p "Build Docker images for Go app"
docker build ../go/ -t testgo:v1

read -p "Build Docker images for Python app"
docker build ../py/ -t testpy:v1

read -p "Load both into kind"
kind load docker-image testgo:v1 --name pidtest 
kind load docker-image testpy:v1 --name pidtest
