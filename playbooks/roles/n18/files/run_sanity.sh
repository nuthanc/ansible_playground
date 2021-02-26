version=$(docker ps|grep config-api|awk '{print $2}'|cut -d : -f2)

docker run --name nuthan_test --entrypoint /bin/bash --env-file /root/env_file -v /root/contrail_test_input.yaml:/contrail-test/contrail_test_input.yaml -v /etc/contrail:/etc/contrail -v /root/.ssh:/root/.ssh --network=host -it bng-artifactory.juniper.net/contrail-nightly/contrail-test-test:${version}