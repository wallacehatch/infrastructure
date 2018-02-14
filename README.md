# Infrastructure for WH

Kubernetes
AWS
Kops
Travis.ci

How to get info for travis stuff
Where X is the index of the correct config

`
export KUBE_CA_CERT=$(kubectl config view --flatten --output=json \
       | jq --raw-output '.clusters[X] .cluster ["certificate-authority-data"]')
export KUBE_ENDPOINT=$(kubectl config view --flatten --output=json \
       | jq --raw-output '.clusters[X] .cluster ["server"]')
export KUBE_ADMIN_CERT=$(kubectl config view --flatten --output=json \
       | jq --raw-output '.users[X] .user ["client-certificate-data"]')
export KUBE_ADMIN_KEY=$(kubectl config view --flatten --output=json \
       | jq --raw-output '.users[X] .user ["client-key-data"]')
export KUBE_USERNAME=$(kubectl config view --flatten --output=json \
       | jq --raw-output '.users[X] .user ["username"]')
`
