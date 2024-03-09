#!/usr/bin/env bash

source $(dirname ${BASH_SOURCE[0]})/setenv.sh

helm install --kubeconfig ${KUBE_CONFIG} --namespace ${NAMESPACE} --create-namespace -f ${values_yaml} \
  ${ARGS[*]} \
  ${PROJECT_NAME} ${HELM_CONFIG_HOME}
