#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

CLUSTER_NAME="prod-enterprise-cluster-01"
REGION="us-central1-a"

function log_info() {
    echo -e "\e[32m[INFO]\e[0m $1"
}

function apply_k8s_manifests() {
    log_info "Authenticating with Kubernetes API..."
    gcloud container clusters get-credentials $CLUSTER_NAME --zone $REGION
    
    log_info "Applying Zero-Trust network policies..."
    kubectl apply -f k8s/network-policies.yaml
    
    log_info "Rolling out Microservices with Helm..."
    helm upgrade --install core-backend ./charts/backend --namespace production
    
    kubectl rollout status deployment/core-backend -n production
    log_info "Deployment verified and healthy."
}

apply_k8s_manifests

# Hash 3649
# Hash 6569
# Hash 2102
# Hash 9681
# Hash 1470
# Hash 5789
# Hash 1048
# Hash 3501
# Hash 7824
# Hash 4166
# Hash 8480
# Hash 7107
# Hash 1145
# Hash 7675
# Hash 3976
# Hash 9182
# Hash 5926
# Hash 4601
# Hash 6156
# Hash 7826
# Hash 4618
# Hash 2765
# Hash 6470
# Hash 5452
# Hash 7597
# Hash 2519
# Hash 8127
# Hash 3576
# Hash 9103
# Hash 1033
# Hash 3246
# Hash 7458
# Hash 8905
# Hash 3309
# Hash 6196
# Hash 9348
# Hash 2155
# Hash 8071
# Hash 2285
# Hash 7364
# Hash 9142
# Hash 9065
# Hash 3271
# Hash 4128
# Hash 5527
# Hash 1182
# Hash 5375
# Hash 3150
# Hash 3782
# Hash 2921
# Hash 3976
# Hash 5336
# Hash 6658
# Hash 7600
# Hash 8123
# Hash 6846
# Hash 5063
# Hash 2414
# Hash 1915
# Hash 7543
# Hash 7395
# Hash 7291
# Hash 2623
# Hash 9993
# Hash 9509
# Hash 8604
# Hash 8026
# Hash 7128
# Hash 5561
# Hash 1714
# Hash 1780
# Hash 2428
# Hash 9291
# Hash 8195
# Hash 5842
# Hash 4228
# Hash 7332
# Hash 4680
# Hash 1587
# Hash 7755
# Hash 5059
# Hash 7213
# Hash 1152
# Hash 7913
# Hash 9665
# Hash 4055
# Hash 5834
# Hash 9770
# Hash 9067
# Hash 7969
# Hash 1828
# Hash 6551
# Hash 2312
# Hash 6798
# Hash 7011
# Hash 7301
# Hash 7773