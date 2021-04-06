sleep 5m
sshpass -p 'c0ntrail123' ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -o 'ServerAliveInterval 2' -l root nodem14.englab.juniper.net reboot
sshpass -p 'c0ntrail123' ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -o 'ServerAliveInterval 2' -l root nodem6.englab.juniper.net reboot
sshpass -p 'c0ntrail123' ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -o 'ServerAliveInterval 2' -l root nodem7.englab.juniper.net reboot
sshpass -p 'c0ntrail123' ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -o 'ServerAliveInterval 2' -l root nodem8.englab.juniper.net reboot
sshpass -p 'c0ntrail123' ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -o 'ServerAliveInterval 2' -l root nodem9.englab.juniper.net reboot
sshpass -p 'c0ntrail123' ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -o 'ServerAliveInterval 2' -l root nodem10.englab.juniper.net reboot