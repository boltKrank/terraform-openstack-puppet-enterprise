variable "name" {
  default     = "puppet-master"
  description = "The host name of the instance."
}

variable "domain" {
  description = "The domain name of the instance."
  default     = "openstack.vm"
}

variable "key_pair" {
  description = "The name of the SSH key pair used in OpenStack."
  default     = "terraform"
}

variable "image" {
  default = "centos_7_x86_64"
}

variable "flavor" {
  default = "m1.medium"
}

variable "network_uuid" {
  description = "The network UUID to place the instance in."
}

variable "security_groups" {
  type    = "list"
  default = [ "sg0" ]
}

variable "floating_ip" {
  description = "Set to false to disable public IP allocation."
  default     = true
}

variable "pool" {
  description = "The floating IP pool to allocate from."
  default     = "public"
}

variable "ssh_user_name" {
  default = "centos"
}

variable "ssh_key_file" {
  default = "~/.ssh/id_rsa.terraform"
}

variable "pp_role" {
  default = "puppet::master_of_masters"
}

variable "pe_source_url" {
  description = "Location of the Puppet Enterprise installer"
  default     = "https://pm.puppetlabs.com/cgi-bin/download.cgi?dist=el&rel=7&arch=x86_64&ver=latest"
}
