# katalog

The katalog is a curated, opinionated Kustomize catalog of applications I find myself deploying over and over again.

## kube-prometheus

Kube-prometheus includes almost everything to get started with Prometheus on Kubernetes.

The default Kustomize resources fail to address persistency and ingress.

I find that [kube-metrics-adapter](https://github.com/zalando-incubator/kube-metrics-adapter) is more flexible than [k8s-prometheus-adapter](https://github.com/DirectXMan12/k8s-prometheus-adapter9), so it's bundled in.

### Usage

See [`kube-prometheus/deploy`](kube-prometheus/deploy/) files for an example usage.
