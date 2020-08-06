#!/usr/bin/env bash
kubectl delete -n square-graylog -f graylog/secret.yaml
kubectl delete -n square-graylog -f elasticsearch/configmap.yaml
kubectl delete -n square-graylog -f mongodb-replicaset/mongodb-init-configmap.yaml
kubectl delete -n square-graylog -f mongodb-replicaset/mongodb-mongodb-configmap.yaml
kubectl delete -n square-graylog -f graylog/configmap.yaml
kubectl delete -n square-graylog -f elasticsearch/client-serviceaccount.yaml
kubectl delete -n square-graylog -f elasticsearch/data-serviceaccount.yaml
kubectl delete -n square-graylog -f elasticsearch/master-serviceaccount.yaml
kubectl delete -n square-graylog -f graylog/serviceaccount.yaml
kubectl delete -n square-graylog -f graylog/role.yaml
kubectl delete -n square-graylog -f graylog/rolebinding.yaml
kubectl delete -n square-graylog -f elasticsearch/client-svc.yaml
kubectl delete -n square-graylog -f elasticsearch/master-svc.yaml
kubectl delete -n square-graylog -f mongodb-replicaset/mongodb-service-client.yaml
kubectl delete -n square-graylog -f mongodb-replicaset/mongodb-service.yaml
kubectl delete -n square-graylog -f graylog/headless-service.yaml
kubectl delete -n square-graylog -f graylog/master-service.yaml
kubectl delete -n square-graylog -f graylog/udp-service.yaml
kubectl delete -n square-graylog -f graylog/web-service.yaml
kubectl delete -n square-graylog -f elasticsearch/client-deployment.yaml
kubectl delete -n square-graylog -f elasticsearch/data-statefulset.yaml
kubectl delete -n square-graylog -f elasticsearch/master-statefulset.yaml
kubectl delete -n square-graylog -f mongodb-replicaset/mongodb-statefulset.yaml
kubectl delete -n square-graylog -f graylog/statefulset.yaml
kubectl delete -n square-graylog -f graylog/ingress.yaml
kubectl delete ns square-graylog