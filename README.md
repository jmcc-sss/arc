# README

docs: https://docs.github.com/en/actions/tutorials/use-actions-runner-controller/get-started

Install the controller

```bash
NAMESPACE="arc"
helm install arc \
    --namespace "${NAMESPACE}" \
    --create-namespace \
    oci://ghcr.io/actions/actions-runner-controller-charts/gha-runner-scale-set-controller
```

Install the runner

```bash
INSTALLATION_NAME="arc-runners"
NAMESPACE="arc"
GITHUB_CONFIG_URL="https://github.com/jmcc-sss/arc"
helm install "${INSTALLATION_NAME}" \
    --namespace "${NAMESPACE}" \
    --create-namespace \
    --set githubConfigUrl="${GITHUB_CONFIG_URL}" \
    --set githubConfigSecret=pre-defined-secret \
    -f values.yaml \
    oci://ghcr.io/actions/actions-runner-controller-charts/gha-runner-scale-set
```