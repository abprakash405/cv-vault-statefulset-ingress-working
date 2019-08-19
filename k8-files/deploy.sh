#!/bin/bash

kubectl apply -f consul-statefulset.yml
kubectl apply -f vault-deployment.yml
