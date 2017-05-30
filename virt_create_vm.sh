#!/bin/sh
virt-install \
    --name <vm_name> \
    --description "description here" \
    --os-type=Linux \
    --ram=2048 \
    --vcpus=2 \
    --disk path=<img path>,bus=virtio,size=<img size in g> \
    --graphics none \
    --location <iso path> \
    --network network=default \
    --extra-args='console=tty0 console=ttyS0,115200n8 serial'
