#!/bin/bash

eksctl create cluster \
        --name ghaCluster \
	    --region eu-west-2 \
	    --nodegroup-name standard-workers \
	    --nodes 3 \
		--nodes-min 1 \
		--nodes-max 4 \
		--node-type t3.medium \
		--ssh-access \
		--ssh-public-key April2024key1 \
		--managed

#eksctl delete cluster --name ghaCluster --region eu-west-2