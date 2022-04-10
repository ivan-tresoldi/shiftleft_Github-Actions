#!/bin/bash
kubectl create ns evil
kubectl apply -f ./deploy.yml -n evil
sleep 20
