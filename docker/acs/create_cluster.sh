docker run --name azure-k8s-cli-docker -v $REPO_PATH:/opt --env-file $ENV_VAR_PATH --rm -it \
    microsoft/azure-cli \
    sh -c "az login -u \${CLIENT_ID} -p \${CLIENT_SECRET} > /dev/null; \
           cd /opt/azure/cli/acs && sh create_cluster.sh;"