Sanity Role
=========

Used for running sanity

Requirements
------------

Version of test-container needs to be mentioned

Example: 
```bash
ansible-playbook -i inventory playbooks/sanity.yml -e version=master.1147

#If alias is used,then
alias sanity="ansible-playbook -i /home/nuthanc/ansible_for_auto/inventory /home/nuthanc/ansible_for_auto/playbooks/sanity.yml"
#Run just
sanity -e "version=master.1147"
```
Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: 10.204.218.103
      roles:
         - sanity

License
-------

BSD

Author Information
------------------

NuthanChandra
nuthanc@juniper.net

