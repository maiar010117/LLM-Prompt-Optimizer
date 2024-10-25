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