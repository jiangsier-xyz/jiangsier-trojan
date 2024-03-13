# Helm Chart for Trojan

1. Place your Kubernetes configuration file named `kube-private.conf` in the src directory.
2. Modify your Helm configurations in the `values-private.yaml` file in the src directory. Be sure to review the default `values.yaml` and customize your variables as necessary.
3. If required, execute `install-in.sh` to deploy an ingress-nginx on your Kubernetes cluster.
4. If needed, run `install-cm.sh` to set up cert-manager on your Kubernetes cluster, which can automatically issue a certificate for your domain name as specified in the Helm configuration `ingress.hosts`.
5. Run `install.sh` to install Trojan and its dependencies.
6. Run `restart.sh` to restart the Trojan service.
7. If you have made changes to any Helm configurations, use `upgrade.sh` to update the Kubernetes resources accordingly.
8. To remove specific resources, execute the `uninstall*.sh` script corresponding to the resources you wish to uninstall.
