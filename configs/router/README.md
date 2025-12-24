# Cisco Router Configuration

This directory contains the configuration for the Cisco IOSv 15.9M6 router used in the GNS3 network simulation.



## Configuration Details

The router serves as the central network hub in the GNS3 topology:

- **GigabitEthernet0/0**: Connected to GNS3 switch (192.168.1.1)
  - Interconnects all 6 Debian VMs
  - LAN interface for internal network

- **GigabitEthernet0/1**: Connected to NAT node
  - Provides internet access
  - DHCP-assigned address

## Routing

- Default route: All external traffic → NAT gateway
- Internal routing: Direct via GigabitEthernet0/0


## Optimization

Uses QEMU-based Cisco IOSv for performance (100-150 KB/s) instead of Dynamips (1-2 KB/s).
