cat <<EOF> env.list
PYTHONPATH=./scripts:./fixtures
TEST_CONFIG_FILE=contrail_test_input.yaml
EMAIL_SUBJECT=Python3-sanity:k8s
MX_GW_TEST=1
PYTHON3=1
EOF

version=$(docker ps|grep control_control_1|awk '{print $2}'|cut -d : -f 2|cut -d - -f 1)

docker run --network=host -t --env-file ./env.list \
-v /root/contrail_test_input.yaml:/contrail-test/contrail_test_input.yaml \
bng-artifactory.juniper.net/contrail-nightly/contrail-test-test:${version} -c -x /contrail-test/run_tests.sh -m -U -T k8s_sanity -t
