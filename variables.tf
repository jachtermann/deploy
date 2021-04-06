variable "resource_group_name" {
  type = string
  description = "The name of the IBM Cloud resource group where the cluster will be created/can be found."
}
variable "cluster_name" {
  type = string
  description = "The name of the cluster that will be created within the resource group"
}
variable "cluster_hardware" {
  type = string
  description = "The type of hardware for the cluster (shared, dedicated)"
  default = "shared"
}
variable "cluster_worker_count" {
  type = number
  description = "The number of worker nodes that should be provisioned for classic infrastructure"
  default = 3
}
variable "cluster_machine_type" {
  type = string
  description = "(Deprecated, use VPC) The machine type that will be provisioned for classic infrastructure"
  default = "b3c.4x16"
}
variable "cluster_flavor" {
  type = string
  description = "(Deprecated, use VPC) The machine type that will be provisioned for classic infrastructure"
  default = "b3c.4x16"
}
variable "cluster_vlan_datacenter" {
  type = string
  description = "(Deprecated, use VPC) The datacenter that should be used for classic infrastructure provisioning"
  default = ""
}
variable "cluster_private_vlan_id" {
  type = string
  description = "(Deprecated, use VPC) The private vlan id that should be used for classic infrastructure provisioning"
  default = ""
}
variable "cluster_public_vlan_id" {
  type = string
  description = "(Deprecated, use VPC) The public vlan id that should be used for classic infrastructure provisioning"
  default = ""
}
variable "cluster_vpc_zone_count" {
  type = number
  description = "Number of vpc zones"
  default = 0
}
variable "region" {
  type = string
  description = "The IBM Cloud region where the cluster will be/has been installed."
}
variable "cluster_type" {
  type = string
  description = "The type of cluster that should be created (openshift or ocp3 or ocp4 or kubernetes)"
}
variable "ibmcloud_api_key" {
  type = string
  description = "The IBM Cloud api token"
}
variable "cluster_exists" {
  type = bool
  description = "Flag indicating if the cluster already exists (true or false)"
}
variable "cluster_login_user" {
  type = string
  description = "The username to log in to openshift"
  default = "apikey"
}
variable "name_prefix" {
  type = string
  description = "The prefix name for the service. If not provided it will default to the resource group name"
  default = ""
}
variable "cluster_is_vpc" {
  type = bool
  description = "Flag indicating that the cluster uses vpc infrastructure"
  default = false
}
variable "cluster_ocp_entitlement" {
  type = string
  description = "Value that is applied to the entitlements for OCP cluster provisioning"
  default = "cloud_pak"
}
variable "cluster_cos_name" {
  type = string
  description = "(optional) The name of the cos instance that will be used for the OCP 4 vpc instance"
  default = ""
}
variable "cluster_provision_cos" {
  type = bool
  description = "Flag indicating that the cos instance should be provisioned, if necessary"
  default = true
}
variable "gitops_dir" {
  type = string
  description = "Directory where the gitops repo content should be written"
  default = ""
}
variable "ibm-resource-group_provision" {
  type = bool
  description = "Flag indicating that the resource group should be created"
  default = true
}
variable "key-protect_name" {
  type = string
  description = "The name that should be used for the service, particularly when connecting to an existing service. If not provided then the name will be defaulted to {name prefix}-{service}"
  default = ""
}
variable "private_endpoint" {
  type = string
  description = "Flag indicating that the service should be created with private endpoints"
  default = "true"
}
variable "key-protect_tags" {
  type = list(string)
  description = "Tags that should be applied to the service"
#  default = ""
  default = [""]
}
variable "key-protect_plan" {
  type = string
  description = "The type of plan the service instance should run under (tiered-pricing)"
  default = "tiered-pricing"
}
variable "key-protect_provision" {
  type = bool
  description = "Flag indicating that key-protect instance should be provisioned"
  default = true
}
variable "ibm-mongodb_resource_group_name" {
  type = string
  description = "Resource group where the cluster has been provisioned."
}
variable "ibm-mongodb_resource_location" {
  type = string
  description = "Geographic location of the resource (e.g. us-south, us-east)"
}
variable "ibm-mongodb_tags" {
  type = list(string)
  description = "Tags that should be applied to the service"
  default = [""]
#  default = ""
}
variable "ibm-mongodb_name_prefix" {
  type = string
  description = "The prefix name for the service. If not provided it will default to the resource group name"
  default = ""
}
variable "ibm-mongodb_plan" {
  type = string
  description = "The type of plan the service instance should run under (standard)"
  default = "standard"
}
variable "ibm-mongodb_role" {
  type = string
  description = "The role of the generated credential (Viewer, Administrator, Operator, Editor)"
  default = "Editor"
}
variable "ibm-mongodb_key-protect-region" {
  type = string
  description = "The region where the Key Protect instance has been provisioned. If not provided defaults to the same region as the MongoDB instance"
  default = ""
}
variable "ibm-mongodb_key-protect-resource-group" {
  type = string
  description = "The resource group where the Key Protect instance has been provisioned. If not provided defaults to the same resource group as the MongoDB instance"
  default = ""
}
variable "ibm-mongodb_key-protect-name" {
  type = string
  description = "The name of the Key Protect instance"
  default = ""
}
variable "ibm-mongodb_key-protect-key" {
  type = string
  description = "The name of the key in the Key Protect instance"
  default = ""
}
variable "ibm-mongodb_authorize-kms" {
  type = bool
  description = "Flag indicating that the authorization for MongoDB to read keys in the KMS should be created"
  default = false
}
variable "cos_name" {
  type = string
  description = "The name that should be used for the service, particularly when connecting to an existing service. If not provided then the name will be defaulted to {name prefix}-{service}"
  default = ""
}
variable "cos_resource_location" {
  type = string
  description = "Geographic location of the resource (e.g. us-south, us-east)"
  default = "global"
}
variable "cos_tags" {
  type = list(string)
  description = "Tags that should be applied to the service"
#  default = ""
  default = [""]
}
variable "cos_plan" {
  type = string
  description = "The type of plan the service instance should run under (lite or standard)"
  default = "standard"
}
variable "cos_provision" {
  type = bool
  description = "Flag indicating that key-protect instance should be provisioned"
  default = true
}
variable "ibm-vpc_name" {
  type = string
  description = "The name of the vpc instance"
  default = ""
}
variable "ibm-vpc_subnet_count" {
  type = number
  description = "Number of subnets for region"
  default = 1
}
variable "ibm-vpc_public_gateway" {
  type = bool
  description = "Flag indicating that a public gateway should be created"
  default = true
}
variable "ibm-activity-tracker_tags" {
  type = list(string)
  description = "Tags that should be applied to the service"
  # default = ""
  default = [""]
}
variable "ibm-activity-tracker_plan" {
  type = string
  description = "The type of plan the service instance should run under (lite, 7-day, 14-day, or 30-day)"
  default = "7-day"
}
variable "ibm-activity-tracker_provision" {
  type = bool
  description = "Flag indicating that the instance should be provisioned"
  default = false
}
variable "logdna_plan" {
  type = string
  description = "The type of plan the service instance should run under (lite, 7-day, 14-day, or 30-day)"
  default = "7-day"
}
variable "logdna_tags" {
  type = list(string)
  description = "Tags that should be applied to the service"
#  default = ""
  default = [""]
}
variable "logdna_provision" {
  type = bool
  description = "Flag indicating that logdna instance should be provisioned"
  default = true
}
variable "logdna_name" {
  type = string
  description = "The name that should be used for the service, particularly when connecting to an existing service. If not provided then the name will be defaulted to {name prefix}-{service}"
  default = ""
}
variable "sysdig_plan" {
  type = string
  description = "The type of plan the service instance should run under (trial or graduated-tier)"
  default = "graduated-tier"
}
variable "sysdig_tags" {
  type = list(string)
  description = "Tags that should be applied to the service"
  default = [""]
}
variable "sysdig_provision" {
  type = bool
  description = "Flag indicating that logdna instance should be provisioned"
  default = true
}
variable "sysdig_name" {
  type = string
  description = "The name that should be used for the service, particularly when connecting to an existing service. If not provided then the name will be defaulted to {name prefix}-{service}"
  default = ""
}
