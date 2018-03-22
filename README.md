# Infrastructure for WH

Kubernetes
AWS
Kops
Travis.ci

How to get info for travis stuff
Where X is the index of the correct config
on Greg's mac this is cluster 2
`
echo KUBE_CERTIFICATE_AUTHORITY_DATA=$(kubectl config view --flatten --output=json \
       | jq --raw-output '.clusters[2] .cluster ["certificate-authority-data"]')
echo KUBE_SERVER=$(kubectl config view --flatten --output=json \
       | jq --raw-output '.clusters[2] .cluster ["server"]')
echo KUBE_CLIENT_CERTIFICATE_DATA=$(kubectl config view --flatten --output=json \
       | jq --raw-output '.users[2] .user ["client-certificate-data"]')
ehco KUBE_CLIENT_KEY_DATA=$(kubectl config view --flatten --output=json \
       | jq --raw-output '.users[2] .user ["client-key-data"]')
echo KUBE_USERNAME=$(kubectl config view --flatten --output=json \
       | jq --raw-output '.users[2] .user ["username"]')
`
