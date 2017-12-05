#!/bin/bash
export NAME=kops.wallacehatch.com
export KOPS_STATE_STORE=s3://wallace-hatch-kubernetes
kops export kubecfg ${NAME}