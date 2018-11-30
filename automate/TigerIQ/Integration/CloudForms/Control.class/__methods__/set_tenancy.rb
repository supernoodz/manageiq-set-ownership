#
# Description: <Method description here>
#

tenant_group    = $evm.root['tenant']
tenant_group_id = tenant_group.miq_groups.first.id

tenant_group = $evm.vmdb(:MiqGroup).find_by(:id => tenant_group_id)

vm = $evm.root['vm']
vm.group = tenant_group
