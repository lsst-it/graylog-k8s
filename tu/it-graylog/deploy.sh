#!/usr/bin/env bash
set -ex
kubectl create ns graylog
kubectl apply -n graylog -f graylog/secret.yaml
kubectl apply -n graylog -f elasticsearch/configmap.yaml
kubectl apply -n graylog -f mongodb-replicaset/mongodb-init-configmap.yaml
kubectl apply -n graylog -f mongodb-replicaset/mongodb-mongodb-configmap.yaml
kubectl apply -n graylog -f graylog/configmap.yaml
kubectl apply -n graylog -f elasticsearch/client-serviceaccount.yaml
kubectl apply -n graylog -f elasticsearch/data-serviceaccount.yaml
kubectl apply -n graylog -f elasticsearch/master-serviceaccount.yaml
kubectl apply -n graylog -f graylog/serviceaccount.yaml
kubectl apply -n graylog -f graylog/role.yaml
kubectl apply -n graylog -f graylog/rolebinding.yaml
kubectl apply -n graylog -f elasticsearch/client-svc.yaml
kubectl apply -n graylog -f elasticsearch/master-svc.yaml
kubectl apply -n graylog -f mongodb-replicaset/mongodb-service-client.yaml
kubectl apply -n graylog -f mongodb-replicaset/mongodb-service.yaml
kubectl apply -n graylog -f graylog/headless-service.yaml
kubectl apply -n graylog -f graylog/master-service.yaml
kubectl apply -n graylog -f graylog/udp-service.yaml
kubectl apply -n graylog -f graylog/web-service.yaml
kubectl apply -n graylog -f elasticsearch/client-deployment.yaml
kubectl apply -n graylog -f elasticsearch/data-statefulset.yaml
kubectl apply -n graylog -f elasticsearch/master-statefulset.yaml
kubectl apply -n graylog -f mongodb-replicaset/mongodb-statefulset.yaml
kubectl apply -n graylog -f graylog/statefulset.yaml
kubectl apply -n graylog -f graylog/ingress.yaml
