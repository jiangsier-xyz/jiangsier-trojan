#!/usr/bin/env bash

source $(dirname ${BASH_SOURCE[0]})/setenv.sh

check_helm

helm repo add jetstack https://charts.jetstack.io &>/dev/null
helm --kubeconfig ${KUBE_CONFIG} install --create-namespace -f ${values_yaml} \
  cert-manager jetstack/cert-manager \
  --namespace ${HELM_cert_manager_namespace} \
  --version ${HELM_cert_manager_version} \
  --set installCRDs=true

helm --kubeconfig ${KUBE_CONFIG} install -f ${values_yaml} \
  --set cert.clusterIssuer.enabled=true \
  ${ARGS[*]} \
  ${PROJECT_NAME}-cm ${HELM_CONFIG_HOME}
