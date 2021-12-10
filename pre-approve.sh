#!/usr/bin/env bash

if [[ $preapprove != '' ]]; then

   while IFS=',' read -ra ADDR; do
        for i in "${ADDR[@]}"; do
            echo "  ${i/:/ = }" >> /tron/FullNode/private_net_config.conf
        done
   done <<< "$preapprove"

fi

echo "}" >> /tron/FullNode/private_net_config.conf
