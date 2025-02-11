# test8-pru12-vending-exist
Use LZ vending with existing subscription

## Resources
https://learn.microsoft.com/en-us/azure/governance/management-groups/overview#moving-management-groups-and-subscriptions


## Permissions assigned to SPN pru12-lbu1vend-exist
- Owner role on the subscription to be moved
- Management Group Contributor on source management group
- Management Group Contributor on target management group
- Reader and Data Access role to tfstate Storage Account
- Storage Blob Data Contributor to tfstate Storage Account
- Network Contributor role on connectivity subscription


