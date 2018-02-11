docker run --name docker-az-cli-create-cluster -v $REPO_PATH:/opt --env-file $ENV_VAR_PATH --rm -it \
    microsoft/azure-cli \
    sh -c "az login -u \${CLIENT_ID} -p \${CLIENT_SECRET} > /dev/null; \
           cd /opt/azure/cli/acr && sh delete_registry.sh;"
