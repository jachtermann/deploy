
resource_group_name		= "jeff-comlib-test"
cluster_name			= "jeff-cluster-test"
cluster_hardware		= "shared"
cluster_worker_count	= 1
cluster_machine_type	= "b3c.4x16"
cluster_flavor			= "b3c.4x16"

cluster_vpc_zone_count	= 1

region					= "us-south"

cluster_type			= "openshift"


cluster_exists			= false

name_prefix				= "jeff-comlib-test"

cluster_is_vpc			= true

cluster_ocp_entitlement	= ""

cluster_cos_name		= "jeff-comlib-test-cos"
cluster_provision_cos	= true

# ibm-resource-group_provision



key-protect_name		= "jeff-comlib-test-key-protect"
private_endpoint		= false
key-protect_tags		= ""
key-protect_plan		= "tiered-pricing"
key-protect_provision	= true


ibm-mongodb_resource_group_name	= "jeff-comlib-test"
ibm-mongodb_resource_location	= "us-south"
ibm-mongodb_tabs				= ""
# ibm-mongodb_name_prefix			= ""
# ibm-mongodb_plan
# ibm-mongodb_role
# ibm-key-protect-region
# ibm-mongodb_key-protect-resource-group
# ibm-mongodb_key-protect-name
# ibm-mongodb_authorize-kms

cos_name				= "jeff-comlib-test-cos"
cos_resource_location	= "us-south"

# cos_plan
# cos_provision


ibm-vpc-name			= "jeff-comlib-test-vpc"
ibm-vpc_subnet_count	= 1
ibm-vpc_public_gateway	= true

# ibm-activity-tracker_tags
# ibm-activity-tracker_plan
# ibm-activity-tracker_provision

# logdna_plan
# logdna_tags
# logdna_provision
logdna_name				= "jeff-comlib-test-logdna"


# sysdig_plan
# sysdig_tags
# sysdig_provision
sysdig_name				= "jeff-comlib-test-sysdig"





