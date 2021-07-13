#!/bin/bash

# make it owned by the GID of the notebook containers.
chown -R :100 "/home/dinize@acct.upmchs.net/NMA/CompNeuro"
# make it group-setgid-writable
chmod -R g+rws "/home/dinize@acct.upmchs.net/NMA/CompNeuro"
# set the default permissions for new files to group-writable
setfacl -d -m g::rwx "/home/dinize@acct.upmchs.net/NMA/CompNeuro"
