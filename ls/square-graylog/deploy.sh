#!/usr/bin/env bash
kubectl create ns square-graylog
kubectl apply -n square-graylog -f graylog/secret.yaml
kubectl apply -n square-graylog -f elasticsearch/configmap.yaml
kubectl apply -n square-graylog -f mongodb-replicaset/mongodb-init-configmap.yaml
kubectl apply -n square-graylog -f mongodb-replicaset/mongodb-mongodb-configmap.yaml
kubectl apply -n square-graylog -f graylog/configmap.yaml
kubectl apply -n square-graylog -f elasticsearch/client-serviceaccount.yaml
kubectl apply -n square-graylog -f elasticsearch/data-serviceaccount.yaml
kubectl apply -n square-graylog -f elasticsearch/master-serviceaccount.yaml
kubectl apply -n square-graylog -f graylog/serviceaccount.yaml
kubectl apply -n square-graylog -f graylog/role.yaml
kubectl apply -n square-graylog -f graylog/rolebinding.yaml
kubectl apply -n square-graylog -f elasticsearch/client-svc.yaml
kubectl apply -n square-graylog -f elasticsearch/master-svc.yaml
kubectl apply -n square-graylog -f mongodb-replicaset/mongodb-service-client.yaml
kubectl apply -n square-graylog -f mongodb-replicaset/mongodb-service.yaml
kubectl apply -n square-graylog -f graylog/headless-service.yaml
kubectl apply -n square-graylog -f graylog/master-service.yaml
kubectl apply -n square-graylog -f graylog/udp-service.yaml
kubectl apply -n square-graylog -f graylog/web-service.yaml
kubectl apply -n square-graylog -f elasticsearch/client-deployment.yaml
kubectl apply -n square-graylog -f elasticsearch/data-statefulset.yaml
kubectl apply -n square-graylog -f elasticsearch/master-statefulset.yaml
kubectl apply -n square-graylog -f mongodb-replicaset/mongodb-statefulset.yaml
kubectl apply -n square-graylog -f graylog/statefulset.yaml
kubectl apply -n square-graylog -f graylog/ingress.yaml
