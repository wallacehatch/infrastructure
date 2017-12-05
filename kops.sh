export NAME=kops.wallacehatch.com
export KOPS_STATE_STORE=s3://wallace-hatch-kubernetes
# for using an existing VPC

kops create cluster \
    --cloud=aws\
    --node-count 1 \
    --zones=us-east-1a\
    --master-zones=us-east-1a \
    --dns-zone=kops.wallacehatch.com \
    --node-size=t2.small \
    --master-size=t2.small \
    --topology=private \
    --networking=calico \
    --bastion \
    --name=${NAME}

kops edit cluster ${NAME}

kops update cluster ${NAME} --yes

# kubectl get nodes 

# kubectl get pods


# kubectl create -f https://rawgit.com/kubernetes/dashboard/master/src/deploy/kubernetes-dashboard.yaml

# kubectl proxy --port=8080

# ssh-add ~/.ssh/id_rsa
# ssh -A admin@bastion.k8s.staging.wearevest.com
# ssh admin@bastion-k8s-staging-wearevest-591h1e-2107237599.us-east-1.elb.amazonaws.com
