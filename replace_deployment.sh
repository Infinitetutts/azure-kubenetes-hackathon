#!/bin/bash
DEPNAME=$1
NAMESPACE=$2
kubectl get deployment $DEPNAME -n $NAMESPACE -o yaml | kubectl replace --force -f -
