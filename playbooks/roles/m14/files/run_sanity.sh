version=$(docker ps|grep control_control_1|awk '{print $2}'|cut -d : -f 2|cut -d - -f 1)

docker run --name nuthan_test --entrypoint /bin/bash --env-file /root/env_file -v /root/contrail_test_input.yaml:/contrail-test/contrail_test_input.yaml -v /root/my_script.sh:/my_script.sh --network=host -it bng-artifactory.juniper.net/contrail-nightly/contrail-test-test:${version}
