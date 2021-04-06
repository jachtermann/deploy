module "cluster" {
  source = "github.com/cloud-native-toolkit/terraform-ibm-container-platform?ref=v1.20.8"

  resource_group_name = var.resource_group_name
  cluster_name = var.cluster_name
  cluster_hardware = var.cluster_hardware
  cluster_worker_count = var.cluster_worker_count
  cluster_machine_type = var.cluster_machine_type
  flavor = var.cluster_flavor
  vlan_datacenter = var.cluster_vlan_datacenter
  private_vlan_id = var.cluster_private_vlan_id
  public_vlan_id = var.cluster_public_vlan_id
  vpc_zone_count = var.cluster_vpc_zone_count
  cluster_region = var.region
  cluster_type = var.cluster_type
  ibmcloud_api_key = var.ibmcloud_api_key
  cluster_exists = var.cluster_exists
  login_user = var.cluster_login_user
  name_prefix = var.name_prefix
  is_vpc = var.cluster_is_vpc
  ocp_entitlement = var.cluster_ocp_entitlement
  cos_name = var.cluster_cos_name
  provision_cos = var.cluster_provision_cos
  gitops_dir = var.gitops_dir

}
module "ibm-resource-group" {
  source = "github.com/cloud-native-toolkit/terraform-ibm-resource-group?ref=v2.1.0"

  resource_group_name = var.resource_group_name
  provision = var.ibm-resource-group_provision

}
module "ibm-access-group" {
  source = "github.com/cloud-native-toolkit/terraform-ibm-access-group?ref=v2.1.0"

  resource_group_name = module.ibm-resource-group.name

}
module "key-protect" {
  source = "github.com/cloud-native-toolkit/terraform-ibm-key-protect?ref=v2.0.2"

  resource_group_name = module.ibm-resource-group.name
  region = var.region
  name_prefix = var.name_prefix
  name = var.key-protect_name
  ibmcloud_api_key = var.ibmcloud_api_key
  private_endpoint = var.private_endpoint
  tags = var.key-protect_tags
  plan = var.key-protect_plan
  provision = var.key-protect_provision

}
module "ibm-mongodb" {
  source = "github.com/cloud-native-toolkit/terraform-ibm-mongodb?ref=v1.1.1"

  resource_group_name = var.ibm-mongodb_resource_group_name
  resource_location = var.ibm-mongodb_resource_location
  tags = var.ibm-mongodb_tags
  name_prefix = var.ibm-mongodb_name_prefix
  plan = var.ibm-mongodb_plan
  role = var.ibm-mongodb_role
  key-protect-region = var.ibm-mongodb_key-protect-region
  key-protect-resource-group = var.ibm-mongodb_key-protect-resource-group
  key-protect-name = var.ibm-mongodb_key-protect-name
  key-protect-key = var.ibm-mongodb_key-protect-key
  authorize-kms = var.ibm-mongodb_authorize-kms

}
module "cos" {
  source = "github.com/cloud-native-toolkit/terraform-ibm-object-storage?ref=v3.0.2"

  resource_group_name = module.ibm-resource-group.name
  name_prefix = var.name_prefix
  name = var.cos_name
  resource_location = var.cos_resource_location
  tags = var.cos_tags
  plan = var.cos_plan
  provision = var.cos_provision

}
module "ibm-vpc" {
  source = "github.com/cloud-native-toolkit/terraform-ibm-vpc?ref=v1.3.2"

  resource_group_name = module.ibm-resource-group.name
  region = var.region
  name = var.ibm-vpc_name
  name_prefix = var.name_prefix
  ibmcloud_api_key = var.ibmcloud_api_key
  subnet_count = var.ibm-vpc_subnet_count
  public_gateway = var.ibm-vpc_public_gateway

}
module "ibm-activity-tracker" {
  source = "github.com/cloud-native-toolkit/terraform-ibm-activity-tracker?ref=v2.1.1"

  resource_group_name = module.ibm-resource-group.name
  resource_location = var.region
  name_prefix = var.name_prefix
  tags = var.ibm-activity-tracker_tags
  plan = var.ibm-activity-tracker_plan
  provision = var.ibm-activity-tracker_provision

}
module "logdna" {
  source = "github.com/cloud-native-toolkit/terraform-ibm-logdna?ref=v3.2.0"

  resource_group_name = module.ibm-resource-group.name
  region = var.region
  name_prefix = var.name_prefix
  plan = var.logdna_plan
  tags = var.logdna_tags
  provision = var.logdna_provision
  name = var.logdna_name

}
module "sysdig" {
  source = "github.com/cloud-native-toolkit/terraform-ibm-sysdig?ref=v3.2.0"

  resource_group_name = module.ibm-resource-group.name
  region = var.region
  name_prefix = var.name_prefix
  plan = var.sysdig_plan
  tags = var.sysdig_tags
  provision = var.sysdig_provision
  name = var.sysdig_name

}
