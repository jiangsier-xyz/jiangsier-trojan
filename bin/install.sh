#!/usr/bin/env bash

source $(dirname ${BASH_SOURCE[0]})/setenv.sh

tls_opt=""
if [[ "x${INITIAL}" == "x1" ]]; then
  ttl_opt="--set ingress.tls.enabled=false"
fi

helm install --kubeconfig ${KUBE_CONFIG} --namespace ${NAMESPACE} --create-namespace -f ${values_yaml} \
  ${tls_opt} \
  ${ARGS[*]} \
  ${PROJECT_NAME} ${HELM_CONFIG_HOME}
