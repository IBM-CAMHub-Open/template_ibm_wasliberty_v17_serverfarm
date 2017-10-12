# =================================================================
# Licensed Materials - Property of IBM
# 5737-E67
# @ Copyright IBM Corporation 2016, 2017 All Rights Reserved
# US Government Users Restricted Rights - Use, duplication or disclosure
# restricted by GSA ADP Schedule Contract with IBM Corp.
# =================================================================

# This is a terraform generated template generated from ibm_wasliberty_v17_serverfarm

##############################################################
# Keys - CAMC (public/private) & optional User Key (public) 
##############################################################
variable "user_public_ssh_key" {
  type = "string"
  description = "User defined public SSH key used to connect to the virtual machine. The format must be in openSSH."
  default = "None"
}

variable "ibm_pm_public_ssh_key" {
  description = "Public CAMC SSH key value which is used to connect to a guest, used on VMware only."
}

variable "ibm_pm_private_ssh_key" {
  description = "Private CAMC SSH key (base64 encoded) used to connect to the virtual guest."
}

variable "allow_unverified_ssl" {
  description = "Communication with vsphere server with self signed certificate"
  default = "true"
}

##############################################################
# Define the vsphere provider 
##############################################################
provider "vsphere" {
  allow_unverified_ssl = "${var.allow_unverified_ssl}"
}

resource "random_id" "stack_id" {
  byte_length = "16"
}

##############################################################
# Define pattern variables 
##############################################################
##### unique stack name #####
variable "ibm_stack_name" {
  description = "A unique stack name."
}

#### Default OS Admin User Map ####

##### Environment variables #####
#Variable : ibm_im_repo
variable "ibm_im_repo" {
  type = "string"
  description = "IBM Software  Installation Manager Repository URL (https://<hostname/IP>:<port>/IMRepo) "
}

#Variable : ibm_im_repo_password
variable "ibm_im_repo_password" {
  type = "string"
  description = "IBM Software  Installation Manager Repository Password"
}

#Variable : ibm_im_repo_user
variable "ibm_im_repo_user" {
  type = "string"
  description = "IBM Software  Installation Manager Repository username"
  default = "repouser"
}

#Variable : ibm_pm_access_token
variable "ibm_pm_access_token" {
  type = "string"
  description = "IBM Pattern Manager Access Token"
}

#Variable : ibm_pm_service
variable "ibm_pm_service" {
  type = "string"
  description = "IBM Pattern Manager Service"
}

#Variable : ibm_sw_repo
variable "ibm_sw_repo" {
  type = "string"
  description = "IBM Software Repo Root (https://<hostname>:<port>)"
}

#Variable : ibm_sw_repo_password
variable "ibm_sw_repo_password" {
  type = "string"
  description = "IBM Software Repo Password"
}

#Variable : ibm_sw_repo_user
variable "ibm_sw_repo_user" {
  type = "string"
  description = "IBM Software Repo Username"
  default = "repouser"
}


##### Image Parameters variables #####

##### LibertyCentralNode01 variables #####
#Variable : LibertyCentralNode01-image
variable "LibertyCentralNode01-image" {
  type = "string"
  description = "Operating system image id / template that should be used when creating the virtual image"
}

#Variable : LibertyCentralNode01-name
variable "LibertyCentralNode01-name" {
  type = "string"
  description = "Short hostname of virtual machine"
}

#Variable : LibertyCentralNode01-os_admin_user
variable "LibertyCentralNode01-os_admin_user" {
  type = "string"
  description = "Name of the admin user account in the virtual machine that will be accessed via SSH"
}

#Variable : LibertyCentralNode01_ssh_private_key_path
variable "LibertyCentralNode01_ssh_private_key_path" {
  type = "string"
  description = "Liberty private key path"
  default = "/root/.ssh/CAMkey.pem"
}

#Variable : LibertyCentralNode01_was_liberty_base_version
variable "LibertyCentralNode01_was_liberty_base_version" {
  type = "string"
  description = "The release and fixpack level for WebSphere Liberty to be installed. Example formats are 8.5.5.11 or 17.0.2"
  default = "17.0.2"
}

#Variable : LibertyCentralNode01_was_liberty_edition
variable "LibertyCentralNode01_was_liberty_edition" {
  type = "string"
  description = "Indicates which Liberty offering should be installed. Valid values are: base, core, nd"
  default = "base"
}

#Variable : LibertyCentralNode01_was_liberty_farm_central_node
variable "LibertyCentralNode01_was_liberty_farm_central_node" {
  type = "string"
  description = "Liberty farm central node"
}

#Variable : LibertyCentralNode01_was_liberty_farm_logFileName
variable "LibertyCentralNode01_was_liberty_farm_logFileName" {
  type = "string"
  description = "liberty farm log File Name"
  default = "serverfarm.log"
}

#Variable : LibertyCentralNode01_was_liberty_farm_pluginInstallRoot
variable "LibertyCentralNode01_was_liberty_farm_pluginInstallRoot" {
  type = "string"
  description = "Liberty farm plugin Install Root"
  default = "plugin_install_root"
}

#Variable : LibertyCentralNode01_was_liberty_farm_sslCertlabel
variable "LibertyCentralNode01_was_liberty_farm_sslCertlabel" {
  type = "string"
  description = "Liberty farm ssl Cert label"
  default = "definedbyuser"
}

#Variable : LibertyCentralNode01_was_liberty_farm_sslKeyringLocation
variable "LibertyCentralNode01_was_liberty_farm_sslKeyringLocation" {
  type = "string"
  description = "Liberty farm ssl Stashfile directory"
  default = "/tmp/liberty/sslkeyring"
}

#Variable : LibertyCentralNode01_was_liberty_farm_sslStashfileLocation
variable "LibertyCentralNode01_was_liberty_farm_sslStashfileLocation" {
  type = "string"
  description = "Liberty farm ssl Stashfile directory"
  default = "/tmp/liberty/stashfile"
}

#Variable : LibertyCentralNode01_was_liberty_farm_webserverName
variable "LibertyCentralNode01_was_liberty_farm_webserverName" {
  type = "string"
  description = "Liberty farm web server name"
  default = "websrv"
}

#Variable : LibertyCentralNode01_was_liberty_farm_webserverPort
variable "LibertyCentralNode01_was_liberty_farm_webserverPort" {
  type = "string"
  description = "Liberty farm HTTP Web server port"
  default = "88"
}

#Variable : LibertyCentralNode01_was_liberty_install_dir
variable "LibertyCentralNode01_was_liberty_install_dir" {
  type = "string"
  description = "The installation root directory for the WebSphere Liberty product binaries"
  default = "/opt/IBM/WebSphere/Liberty"
}

#Variable : LibertyCentralNode01_was_liberty_install_grp
variable "LibertyCentralNode01_was_liberty_install_grp" {
  type = "string"
  description = "Operating system group name that will be assigned to the product installation"
  default = "root"
}

#Variable : LibertyCentralNode01_was_liberty_install_user
variable "LibertyCentralNode01_was_liberty_install_user" {
  type = "string"
  description = "Operating system userid that will be used to install the product. Userid will be created if it does not exist"
  default = "root"
}

#Variable : LibertyCentralNode01_was_liberty_liberty_servers_server1_feature
variable "LibertyCentralNode01_was_liberty_liberty_servers_server1_feature" {
  type = "string"
  description = "Liberty features that should be included in the server definition"
  default = "webProfile-7.0 adminCenter-1.0"
}

#Variable : LibertyCentralNode01_was_liberty_liberty_servers_server1_httpport
variable "LibertyCentralNode01_was_liberty_liberty_servers_server1_httpport" {
  type = "string"
  description = "Liberty server http port"
  default = "9080"
}

#Variable : LibertyCentralNode01_was_liberty_liberty_servers_server1_httpsport
variable "LibertyCentralNode01_was_liberty_liberty_servers_server1_httpsport" {
  type = "string"
  description = "Liberty server https port"
  default = "9443"
}

#Variable : LibertyCentralNode01_was_liberty_liberty_servers_server1_keystore_id
variable "LibertyCentralNode01_was_liberty_liberty_servers_server1_keystore_id" {
  type = "string"
  description = "Liberty keystore id"
  default = "defaultKeyStore"
}

#Variable : LibertyCentralNode01_was_liberty_liberty_servers_server1_keystore_password
variable "LibertyCentralNode01_was_liberty_liberty_servers_server1_keystore_password" {
  type = "string"
  description = "Liberty Keystore password"
}

#Variable : LibertyCentralNode01_was_liberty_liberty_servers_server1_name
variable "LibertyCentralNode01_was_liberty_liberty_servers_server1_name" {
  type = "string"
  description = "Liberty server name"
  default = "defaultServer"
}

#Variable : LibertyCentralNode01_was_liberty_liberty_servers_server1_users_admin_user_name
variable "LibertyCentralNode01_was_liberty_liberty_servers_server1_users_admin_user_name" {
  type = "string"
  description = "Liberty administrative user name"
  default = "admin"
}

#Variable : LibertyCentralNode01_was_liberty_liberty_servers_server1_users_admin_user_password
variable "LibertyCentralNode01_was_liberty_liberty_servers_server1_users_admin_user_password" {
  type = "string"
  description = "Liberty administrative user name password"
}

#Variable : LibertyCentralNode01_was_liberty_liberty_servers_server1_users_admin_user_role
variable "LibertyCentralNode01_was_liberty_liberty_servers_server1_users_admin_user_role" {
  type = "string"
  description = "liberty admin user role"
  default = "admin"
}

#Variable : LibertyCentralNode01_was_liberty_wlp_user_dir
variable "LibertyCentralNode01_was_liberty_wlp_user_dir" {
  type = "string"
  description = "Liberty directory which product configuration will be written"
  default = "/opt/IBM/WebSphere/Liberty/usr"
}


##### LibertyNode01 variables #####
#Variable : LibertyNode01-image
variable "LibertyNode01-image" {
  type = "string"
  description = "Operating system image id / template that should be used when creating the virtual image"
}

#Variable : LibertyNode01-name
variable "LibertyNode01-name" {
  type = "string"
  description = "Short hostname of virtual machine"
}

#Variable : LibertyNode01-os_admin_user
variable "LibertyNode01-os_admin_user" {
  type = "string"
  description = "Name of the admin user account in the virtual machine that will be accessed via SSH"
}

#Variable : LibertyNode01_ssh_private_key_path
variable "LibertyNode01_ssh_private_key_path" {
  type = "string"
  description = "Liberty private key path"
  default = "/root/.ssh/CAMkey.pem"
}

#Variable : LibertyNode01_was_liberty_base_version
variable "LibertyNode01_was_liberty_base_version" {
  type = "string"
  description = "The release and fixpack level for WebSphere Liberty to be installed. Example formats are 8.5.5.11 or 17.0.2"
  default = "17.0.2"
}

#Variable : LibertyNode01_was_liberty_edition
variable "LibertyNode01_was_liberty_edition" {
  type = "string"
  description = "Indicates which Liberty offering should be installed. Valid values are: base, core, nd"
  default = "base"
}

#Variable : LibertyNode01_was_liberty_farm_central_node
variable "LibertyNode01_was_liberty_farm_central_node" {
  type = "string"
  description = "Liberty farm central node"
}

#Variable : LibertyNode01_was_liberty_farm_httpd_plugins_dir
variable "LibertyNode01_was_liberty_farm_httpd_plugins_dir" {
  type = "string"
  description = "Liberty http plugins dir"
}

#Variable : LibertyNode01_was_liberty_farm_httpd_user
variable "LibertyNode01_was_liberty_farm_httpd_user" {
  type = "string"
  description = "Liberty farm http user"
}

#Variable : LibertyNode01_was_liberty_farm_logFileName
variable "LibertyNode01_was_liberty_farm_logFileName" {
  type = "string"
  description = "liberty farm log File Name"
  default = "serverfarm.log"
}

#Variable : LibertyNode01_was_liberty_farm_pluginInstallRoot
variable "LibertyNode01_was_liberty_farm_pluginInstallRoot" {
  type = "string"
  description = "Liberty farm plugin Install Root"
  default = "plugin_install_root"
}

#Variable : LibertyNode01_was_liberty_farm_sslCertlabel
variable "LibertyNode01_was_liberty_farm_sslCertlabel" {
  type = "string"
  description = "Liberty farm ssl Cert label"
  default = "definedbyuser"
}

#Variable : LibertyNode01_was_liberty_farm_sslKeyringLocation
variable "LibertyNode01_was_liberty_farm_sslKeyringLocation" {
  type = "string"
  description = "Liberty farm ssl Stashfile directory"
  default = "/tmp/liberty/sslkeyring"
}

#Variable : LibertyNode01_was_liberty_farm_sslStashfileLocation
variable "LibertyNode01_was_liberty_farm_sslStashfileLocation" {
  type = "string"
  description = "Liberty farm ssl Stashfile directory"
  default = "/tmp/liberty/stashfile"
}

#Variable : LibertyNode01_was_liberty_farm_webserverName
variable "LibertyNode01_was_liberty_farm_webserverName" {
  type = "string"
  description = "Liberty farm web server name"
  default = "websrv"
}

#Variable : LibertyNode01_was_liberty_farm_webserverPort
variable "LibertyNode01_was_liberty_farm_webserverPort" {
  type = "string"
  description = "Liberty farm HTTP Web server port"
  default = "88"
}

#Variable : LibertyNode01_was_liberty_farm_webserverhost
variable "LibertyNode01_was_liberty_farm_webserverhost" {
  type = "string"
  description = "Liberty web server host"
}

#Variable : LibertyNode01_was_liberty_install_dir
variable "LibertyNode01_was_liberty_install_dir" {
  type = "string"
  description = "The installation root directory for the WebSphere Liberty product binaries"
  default = "/opt/IBM/WebSphere/Liberty"
}

#Variable : LibertyNode01_was_liberty_install_grp
variable "LibertyNode01_was_liberty_install_grp" {
  type = "string"
  description = "Operating system group name that will be assigned to the product installation"
  default = "root"
}

#Variable : LibertyNode01_was_liberty_install_user
variable "LibertyNode01_was_liberty_install_user" {
  type = "string"
  description = "Operating system userid that will be used to install the product. Userid will be created if it does not exist"
  default = "root"
}

#Variable : LibertyNode01_was_liberty_liberty_servers_server1_feature
variable "LibertyNode01_was_liberty_liberty_servers_server1_feature" {
  type = "string"
  description = "Liberty features that should be included in the server definition"
  default = "webProfile-7.0 adminCenter-1.0"
}

#Variable : LibertyNode01_was_liberty_liberty_servers_server1_httpport
variable "LibertyNode01_was_liberty_liberty_servers_server1_httpport" {
  type = "string"
  description = "Liberty server http port"
  default = "9080"
}

#Variable : LibertyNode01_was_liberty_liberty_servers_server1_httpsport
variable "LibertyNode01_was_liberty_liberty_servers_server1_httpsport" {
  type = "string"
  description = "Liberty server https port"
  default = "9443"
}

#Variable : LibertyNode01_was_liberty_liberty_servers_server1_keystore_id
variable "LibertyNode01_was_liberty_liberty_servers_server1_keystore_id" {
  type = "string"
  description = "Liberty keystore id"
  default = "defaultKeyStore"
}

#Variable : LibertyNode01_was_liberty_liberty_servers_server1_keystore_password
variable "LibertyNode01_was_liberty_liberty_servers_server1_keystore_password" {
  type = "string"
  description = "Liberty Keystore password"
}

#Variable : LibertyNode01_was_liberty_liberty_servers_server1_name
variable "LibertyNode01_was_liberty_liberty_servers_server1_name" {
  type = "string"
  description = "Liberty server name"
  default = "defaultServer"
}

#Variable : LibertyNode01_was_liberty_liberty_servers_server1_users_admin_user_name
variable "LibertyNode01_was_liberty_liberty_servers_server1_users_admin_user_name" {
  type = "string"
  description = "Liberty administrative user name"
  default = "admin"
}

#Variable : LibertyNode01_was_liberty_liberty_servers_server1_users_admin_user_password
variable "LibertyNode01_was_liberty_liberty_servers_server1_users_admin_user_password" {
  type = "string"
  description = "Liberty administrative user name password"
}

#Variable : LibertyNode01_was_liberty_liberty_servers_server1_users_admin_user_role
variable "LibertyNode01_was_liberty_liberty_servers_server1_users_admin_user_role" {
  type = "string"
  description = "liberty admin user role"
  default = "admin"
}

#Variable : LibertyNode01_was_liberty_wlp_user_dir
variable "LibertyNode01_was_liberty_wlp_user_dir" {
  type = "string"
  description = "Liberty directory which product configuration will be written"
  default = "/opt/IBM/WebSphere/Liberty/usr"
}


#########################################################
##### Resource : LibertyCentralNode01
#########################################################

variable "LibertyCentralNode01_domain" {
  type = "string"
  description = "Domain Name of virtual machine"
}

variable "LibertyCentralNode01-os_password" {
  type = "string"
  description = "Operating System Password for the Operating System User to access virtual machine"
}

variable "LibertyCentralNode01_folder" {
  description = "Target vSphere folder for virtual machine"
}

variable "LibertyCentralNode01_datacenter" {
  description = "Target vSphere datacenter for virtual machine creation"
}

variable "LibertyCentralNode01_number_of_vcpu" {
  description = "Number of virtual CPU for the virtual machine, which is required to be a positive Integer"
  default = "2"
}

variable "LibertyCentralNode01_memory" {
  description = "Memory assigned to the virtual machine in megabytes. This value is required to be an increment of 1024"
  default = "2048"
}

variable "LibertyCentralNode01_cluster" {
  description = "Target vSphere cluster to host the virtual machine"
}

variable "LibertyCentralNode01_dns_suffixes" {
  type = "list"
  description = "Name resolution suffixes for the virtual network adapter"
}

variable "LibertyCentralNode01_dns_servers" {
  type = "list"
  description = "DNS servers for the virtual network adapter"
}

variable "LibertyCentralNode01_network_interface_label" {
  description = "vSphere port group or network label for virtual machine's vNIC"
}

variable "LibertyCentralNode01_ipv4_gateway" {
  description = "IPv4 gateway for vNIC configuration"
}

variable "LibertyCentralNode01_ipv4_address" {
  description = "IPv4 address for vNIC configuration"
}

variable "LibertyCentralNode01_ipv4_prefix_length" {
  description = "IPv4 prefix length for vNIC configuration. The value must be a number between 8 and 32"
}

variable "LibertyCentralNode01_root_disk_datastore" {
  description = "Data store or storage cluster name for target virtual machine's disks"
}

variable "LibertyCentralNode01_root_disk_type" {
  type = "string"
  description = "Type of template disk volume"
  default = "eager_zeroed"
}

variable "LibertyCentralNode01_root_disk_controller_type" {
  type = "string"
  description = "Type of template disk controller"
  default = "scsi"
}

variable "LibertyCentralNode01_root_disk_keep_on_remove" {
  type = "string"
  description = "Delete template disk volume when the virtual machine is deleted"
  default = "false"
}

# vsphere vm
resource "vsphere_virtual_machine" "LibertyCentralNode01" {
  name = "${var.LibertyCentralNode01-name}"
  folder = "${var.LibertyCentralNode01_folder}"
  datacenter = "${var.LibertyCentralNode01_datacenter}"
  vcpu = "${var.LibertyCentralNode01_number_of_vcpu}"
  memory = "${var.LibertyCentralNode01_memory}"
  cluster = "${var.LibertyCentralNode01_cluster}"
  dns_suffixes = "${var.LibertyCentralNode01_dns_suffixes}"
  dns_servers = "${var.LibertyCentralNode01_dns_servers}"
  domain = "${var.LibertyCentralNode01_domain}"

  network_interface {
    label = "${var.LibertyCentralNode01_network_interface_label}"
    ipv4_gateway = "${var.LibertyCentralNode01_ipv4_gateway}"
    ipv4_address = "${var.LibertyCentralNode01_ipv4_address}"
    ipv4_prefix_length = "${var.LibertyCentralNode01_ipv4_prefix_length}"
  }

  disk {
    type = "${var.LibertyCentralNode01_root_disk_type}"
    template = "${var.LibertyCentralNode01-image}"
    datastore = "${var.LibertyCentralNode01_root_disk_datastore}"
    keep_on_remove = "${var.LibertyCentralNode01_root_disk_keep_on_remove}"
    controller_type = "${var.LibertyCentralNode01_root_disk_controller_type}"
  }

  # Specify the connection
  connection {
    type = "ssh"
    user = "${var.LibertyCentralNode01-os_admin_user}"
    password = "${var.LibertyCentralNode01-os_password}"
  }

  provisioner "file" {
    destination = "LibertyCentralNode01_add_ssh_key.sh"
    content     = <<EOF
##############################################################
# Licensed Materials - Property of IBM
#
# For use by authorized subscribers only.
#
# Refer to Service Description and SLA available here:
# http://www-03.ibm.com/software/sla/sladb.nsf/sla/saas
#
# D0021ZX IBM Cloud Automation Library, Enterprise Middleware
# © Copyright IBM Corp. 2017
##############################################################
#!/bin/bash

if (( $# != 3 )); then
echo "usage: arg 1 is user, arg 2 is public key, arg3 is CAMC Public Key"
exit -1
fi

userid="$1"
ssh_key="$2"
camc_ssh_key="$3"

user_home=$(eval echo "~$userid")
user_auth_key_file=$user_home/.ssh/authorized_keys
echo "$user_auth_key_file"
if ! [ -f $user_auth_key_file ]; then
echo "$user_auth_key_file does not exist on this system, creating."
mkdir $user_home/.ssh
chmod 600 $user_home/.ssh
echo "" > $user_home/.ssh/authorized_keys
chmod 600 $user_home/.ssh/authorized_keys
else
echo "user_home : $user_home"
fi

if [[ $ssh_key = 'None' ]]; then
echo "skipping user key add, 'None' specified"
else
echo "$user_auth_key_file"
echo "$ssh_key" >> "$user_auth_key_file"
if [ $? -ne 0 ]; then
echo "failed to add to $user_auth_key_file"
exit -1
else
echo "updated $user_auth_key_file"
fi
fi

echo "$camc_ssh_key" >> "$user_auth_key_file"
if [ $? -ne 0 ]; then
echo "failed to add to $user_auth_key_file"
exit -1
else
echo "updated $user_auth_key_file"
fi

EOF
  }

  # Execute the script remotely
  provisioner "remote-exec" {
    inline = [
      "sudo bash -c 'chmod +x LibertyCentralNode01_add_ssh_key.sh'",
      "sudo bash -c './LibertyCentralNode01_add_ssh_key.sh  \"${var.LibertyCentralNode01-os_admin_user}\" \"${var.user_public_ssh_key}\" \"${var.ibm_pm_public_ssh_key}\">> LibertyCentralNode01_add_ssh_key.log 2>&1'"
    ]
  }

}

#########################################################
##### Resource : LibertyCentralNode01_chef_bootstrap_comp
#########################################################

resource "camc_bootstrap" "LibertyCentralNode01_chef_bootstrap_comp" {
  depends_on = ["camc_vaultitem.VaultItem","vsphere_virtual_machine.LibertyCentralNode01"]
  name = "LibertyCentralNode01_chef_bootstrap_comp"
  camc_endpoint = "${var.ibm_pm_service}/v1/bootstrap/chef"
  access_token = "${var.ibm_pm_access_token}"
  skip_ssl_verify = true
  trace = true
  data = <<EOT
{
  "os_admin_user": "${var.LibertyCentralNode01-os_admin_user}",
  "stack_id": "${random_id.stack_id.hex}",
  "environment_name": "_default",
  "host_ip": "${vsphere_virtual_machine.LibertyCentralNode01.network_interface.0.ipv4_address}",
  "node_name": "${var.LibertyCentralNode01-name}",
  "node_attributes": {
    "ibm_internal": {
      "stack_id": "${random_id.stack_id.hex}",
      "stack_name": "${var.ibm_stack_name}",
      "vault": {
        "item": "secrets",
        "name": "${random_id.stack_id.hex}"
      }
    }
  }
}
EOT
}


#########################################################
##### Resource : LibertyCentralNode01_liberty_create_server
#########################################################

resource "camc_softwaredeploy" "LibertyCentralNode01_liberty_create_server" {
  depends_on = ["camc_softwaredeploy.LibertyNode01_liberty_install","camc_softwaredeploy.LibertyCentralNode01_liberty_install"]
  name = "LibertyCentralNode01_liberty_create_server"
  camc_endpoint = "${var.ibm_pm_service}/v1/software_deployment/chef"
  access_token = "${var.ibm_pm_access_token}"
  skip_ssl_verify = true
  trace = true
  data = <<EOT
{
  "os_admin_user": "${var.LibertyCentralNode01-os_admin_user}",
  "stack_id": "${random_id.stack_id.hex}",
  "environment_name": "_default",
  "host_ip": "${vsphere_virtual_machine.LibertyCentralNode01.network_interface.0.ipv4_address}",
  "node_name": "${var.LibertyCentralNode01-name}",
  "runlist": "role[liberty_create_server]",
  "node_attributes": {
    "ibm_internal": {
      "roles": "[liberty_create_server]"
    },
    "was_liberty": {
      "install_dir": "${var.LibertyCentralNode01_was_liberty_install_dir}",
      "liberty_servers": {
        "server1": {
          "feature": "${var.LibertyCentralNode01_was_liberty_liberty_servers_server1_feature}",
          "httpport": "${var.LibertyCentralNode01_was_liberty_liberty_servers_server1_httpport}",
          "httpsport": "${var.LibertyCentralNode01_was_liberty_liberty_servers_server1_httpsport}",
          "jvm_params": "-Xms256m -Xmx2048m",
          "keystore_id": "${var.LibertyCentralNode01_was_liberty_liberty_servers_server1_keystore_id}",
          "name": "${var.LibertyCentralNode01_was_liberty_liberty_servers_server1_name}",
          "users": {
            "admin_user": {
              "name": "${var.LibertyCentralNode01_was_liberty_liberty_servers_server1_users_admin_user_name}",
              "role": "${var.LibertyCentralNode01_was_liberty_liberty_servers_server1_users_admin_user_role}"
            }
          }
        }
      },
      "wlp_user_dir": "${var.LibertyCentralNode01_was_liberty_wlp_user_dir}"
    }
  },
  "vault_content": {
    "item": "secrets",
    "values": {
      "was_liberty": {
        "liberty_servers": {
          "server1": {
            "keystore_password": "${var.LibertyCentralNode01_was_liberty_liberty_servers_server1_keystore_password}",
            "users": {
              "admin_user": {
                "password": "${var.LibertyCentralNode01_was_liberty_liberty_servers_server1_users_admin_user_password}"
              }
            }
          }
        }
      }
    },
    "vault": "${random_id.stack_id.hex}"
  }
}
EOT
}


#########################################################
##### Resource : LibertyCentralNode01_liberty_install
#########################################################

resource "camc_softwaredeploy" "LibertyCentralNode01_liberty_install" {
  depends_on = ["camc_bootstrap.LibertyNode01_chef_bootstrap_comp","camc_bootstrap.LibertyCentralNode01_chef_bootstrap_comp"]
  name = "LibertyCentralNode01_liberty_install"
  camc_endpoint = "${var.ibm_pm_service}/v1/software_deployment/chef"
  access_token = "${var.ibm_pm_access_token}"
  skip_ssl_verify = true
  trace = true
  data = <<EOT
{
  "os_admin_user": "${var.LibertyCentralNode01-os_admin_user}",
  "stack_id": "${random_id.stack_id.hex}",
  "environment_name": "_default",
  "host_ip": "${vsphere_virtual_machine.LibertyCentralNode01.network_interface.0.ipv4_address}",
  "node_name": "${var.LibertyCentralNode01-name}",
  "runlist": "role[liberty_install]",
  "node_attributes": {
    "ibm": {
      "im_repo": "${var.ibm_im_repo}",
      "im_repo_user": "${var.ibm_im_repo_user}",
      "sw_repo": "${var.ibm_sw_repo}",
      "sw_repo_user": "${var.ibm_sw_repo_user}"
    },
    "ibm_internal": {
      "roles": "[liberty_install]"
    },
    "was_liberty": {
      "base_version": "${var.LibertyCentralNode01_was_liberty_base_version}",
      "edition": "${var.LibertyCentralNode01_was_liberty_edition}",
      "install_dir": "${var.LibertyCentralNode01_was_liberty_install_dir}",
      "install_grp": "${var.LibertyCentralNode01_was_liberty_install_grp}",
      "install_user": "${var.LibertyCentralNode01_was_liberty_install_user}",
      "wlp_user_dir": "${var.LibertyCentralNode01_was_liberty_wlp_user_dir}"
    }
  },
  "vault_content": {
    "item": "secrets",
    "values": {
      "ibm": {
        "im_repo_password": "${var.ibm_im_repo_password}",
        "sw_repo_password": "${var.ibm_sw_repo_password}"
      }
    },
    "vault": "${random_id.stack_id.hex}"
  }
}
EOT
}


#########################################################
##### Resource : LibertyCentralNode01_liberty_plugin_generate
#########################################################

resource "camc_softwaredeploy" "LibertyCentralNode01_liberty_plugin_generate" {
  depends_on = ["camc_softwaredeploy.LibertyNode01_liberty_plugin_merge_setup"]
  name = "LibertyCentralNode01_liberty_plugin_generate"
  camc_endpoint = "${var.ibm_pm_service}/v1/software_deployment/chef"
  access_token = "${var.ibm_pm_access_token}"
  skip_ssl_verify = true
  trace = true
  data = <<EOT
{
  "os_admin_user": "${var.LibertyCentralNode01-os_admin_user}",
  "stack_id": "${random_id.stack_id.hex}",
  "environment_name": "_default",
  "host_ip": "${vsphere_virtual_machine.LibertyCentralNode01.network_interface.0.ipv4_address}",
  "node_name": "${var.LibertyCentralNode01-name}",
  "runlist": "role[liberty_plugin_generate]",
  "node_attributes": {
    "ibm_internal": {
      "roles": "[liberty_plugin_generate]"
    },
    "ssh": {
      "private_key": {
        "path": "${var.LibertyCentralNode01_ssh_private_key_path}"
      }
    },
    "was_liberty": {
      "farm": {
        "central_node": "${var.LibertyCentralNode01_was_liberty_farm_central_node}",
        "logFileName": "${var.LibertyCentralNode01_was_liberty_farm_logFileName}",
        "pluginInstallRoot": "${var.LibertyCentralNode01_was_liberty_farm_pluginInstallRoot}",
        "sslCertlabel": "${var.LibertyCentralNode01_was_liberty_farm_sslCertlabel}",
        "sslKeyringLocation": "${var.LibertyCentralNode01_was_liberty_farm_sslKeyringLocation}",
        "sslStashfileLocation": "${var.LibertyCentralNode01_was_liberty_farm_sslStashfileLocation}",
        "webserverName": "${var.LibertyCentralNode01_was_liberty_farm_webserverName}",
        "webserverPort": "${var.LibertyCentralNode01_was_liberty_farm_webserverPort}"
      }
    }
  }
}
EOT
}


#########################################################
##### Resource : LibertyNode01
#########################################################

variable "LibertyNode01_domain" {
  type = "string"
  description = "Domain Name of virtual machine"
}

variable "LibertyNode01-os_password" {
  type = "string"
  description = "Operating System Password for the Operating System User to access virtual machine"
}

variable "LibertyNode01_folder" {
  description = "Target vSphere folder for virtual machine"
}

variable "LibertyNode01_datacenter" {
  description = "Target vSphere datacenter for virtual machine creation"
}

variable "LibertyNode01_number_of_vcpu" {
  description = "Number of virtual CPU for the virtual machine, which is required to be a positive Integer"
  default = "2"
}

variable "LibertyNode01_memory" {
  description = "Memory assigned to the virtual machine in megabytes. This value is required to be an increment of 1024"
  default = "2048"
}

variable "LibertyNode01_cluster" {
  description = "Target vSphere cluster to host the virtual machine"
}

variable "LibertyNode01_dns_suffixes" {
  type = "list"
  description = "Name resolution suffixes for the virtual network adapter"
}

variable "LibertyNode01_dns_servers" {
  type = "list"
  description = "DNS servers for the virtual network adapter"
}

variable "LibertyNode01_network_interface_label" {
  description = "vSphere port group or network label for virtual machine's vNIC"
}

variable "LibertyNode01_ipv4_gateway" {
  description = "IPv4 gateway for vNIC configuration"
}

variable "LibertyNode01_ipv4_address" {
  description = "IPv4 address for vNIC configuration"
}

variable "LibertyNode01_ipv4_prefix_length" {
  description = "IPv4 prefix length for vNIC configuration. The value must be a number between 8 and 32"
}

variable "LibertyNode01_root_disk_datastore" {
  description = "Data store or storage cluster name for target virtual machine's disks"
}

variable "LibertyNode01_root_disk_type" {
  type = "string"
  description = "Type of template disk volume"
  default = "eager_zeroed"
}

variable "LibertyNode01_root_disk_controller_type" {
  type = "string"
  description = "Type of template disk controller"
  default = "scsi"
}

variable "LibertyNode01_root_disk_keep_on_remove" {
  type = "string"
  description = "Delete template disk volume when the virtual machine is deleted"
  default = "false"
}

# vsphere vm
resource "vsphere_virtual_machine" "LibertyNode01" {
  name = "${var.LibertyNode01-name}"
  folder = "${var.LibertyNode01_folder}"
  datacenter = "${var.LibertyNode01_datacenter}"
  vcpu = "${var.LibertyNode01_number_of_vcpu}"
  memory = "${var.LibertyNode01_memory}"
  cluster = "${var.LibertyNode01_cluster}"
  dns_suffixes = "${var.LibertyNode01_dns_suffixes}"
  dns_servers = "${var.LibertyNode01_dns_servers}"
  domain = "${var.LibertyNode01_domain}"

  network_interface {
    label = "${var.LibertyNode01_network_interface_label}"
    ipv4_gateway = "${var.LibertyNode01_ipv4_gateway}"
    ipv4_address = "${var.LibertyNode01_ipv4_address}"
    ipv4_prefix_length = "${var.LibertyNode01_ipv4_prefix_length}"
  }

  disk {
    type = "${var.LibertyNode01_root_disk_type}"
    template = "${var.LibertyNode01-image}"
    datastore = "${var.LibertyNode01_root_disk_datastore}"
    keep_on_remove = "${var.LibertyNode01_root_disk_keep_on_remove}"
    controller_type = "${var.LibertyNode01_root_disk_controller_type}"
  }

  # Specify the connection
  connection {
    type = "ssh"
    user = "${var.LibertyNode01-os_admin_user}"
    password = "${var.LibertyNode01-os_password}"
  }

  provisioner "file" {
    destination = "LibertyNode01_add_ssh_key.sh"
    content     = <<EOF
##############################################################
# Licensed Materials - Property of IBM
#
# For use by authorized subscribers only.
#
# Refer to Service Description and SLA available here:
# http://www-03.ibm.com/software/sla/sladb.nsf/sla/saas
#
# D0021ZX IBM Cloud Automation Library, Enterprise Middleware
# © Copyright IBM Corp. 2017
##############################################################
#!/bin/bash

if (( $# != 3 )); then
echo "usage: arg 1 is user, arg 2 is public key, arg3 is CAMC Public Key"
exit -1
fi

userid="$1"
ssh_key="$2"
camc_ssh_key="$3"

user_home=$(eval echo "~$userid")
user_auth_key_file=$user_home/.ssh/authorized_keys
echo "$user_auth_key_file"
if ! [ -f $user_auth_key_file ]; then
echo "$user_auth_key_file does not exist on this system, creating."
mkdir $user_home/.ssh
chmod 600 $user_home/.ssh
echo "" > $user_home/.ssh/authorized_keys
chmod 600 $user_home/.ssh/authorized_keys
else
echo "user_home : $user_home"
fi

if [[ $ssh_key = 'None' ]]; then
echo "skipping user key add, 'None' specified"
else
echo "$user_auth_key_file"
echo "$ssh_key" >> "$user_auth_key_file"
if [ $? -ne 0 ]; then
echo "failed to add to $user_auth_key_file"
exit -1
else
echo "updated $user_auth_key_file"
fi
fi

echo "$camc_ssh_key" >> "$user_auth_key_file"
if [ $? -ne 0 ]; then
echo "failed to add to $user_auth_key_file"
exit -1
else
echo "updated $user_auth_key_file"
fi

EOF
  }

  # Execute the script remotely
  provisioner "remote-exec" {
    inline = [
      "sudo bash -c 'chmod +x LibertyNode01_add_ssh_key.sh'",
      "sudo bash -c './LibertyNode01_add_ssh_key.sh  \"${var.LibertyNode01-os_admin_user}\" \"${var.user_public_ssh_key}\" \"${var.ibm_pm_public_ssh_key}\">> LibertyNode01_add_ssh_key.log 2>&1'"
    ]
  }

}

#########################################################
##### Resource : LibertyNode01_chef_bootstrap_comp
#########################################################

resource "camc_bootstrap" "LibertyNode01_chef_bootstrap_comp" {
  depends_on = ["camc_vaultitem.VaultItem","vsphere_virtual_machine.LibertyNode01"]
  name = "LibertyNode01_chef_bootstrap_comp"
  camc_endpoint = "${var.ibm_pm_service}/v1/bootstrap/chef"
  access_token = "${var.ibm_pm_access_token}"
  skip_ssl_verify = true
  trace = true
  data = <<EOT
{
  "os_admin_user": "${var.LibertyNode01-os_admin_user}",
  "stack_id": "${random_id.stack_id.hex}",
  "environment_name": "_default",
  "host_ip": "${vsphere_virtual_machine.LibertyNode01.network_interface.0.ipv4_address}",
  "node_name": "${var.LibertyNode01-name}",
  "node_attributes": {
    "ibm_internal": {
      "stack_id": "${random_id.stack_id.hex}",
      "stack_name": "${var.ibm_stack_name}",
      "vault": {
        "item": "secrets",
        "name": "${random_id.stack_id.hex}"
      }
    }
  }
}
EOT
}


#########################################################
##### Resource : LibertyNode01_liberty_create_server
#########################################################

resource "camc_softwaredeploy" "LibertyNode01_liberty_create_server" {
  depends_on = ["camc_softwaredeploy.LibertyNode01_liberty_install","camc_softwaredeploy.LibertyCentralNode01_liberty_install"]
  name = "LibertyNode01_liberty_create_server"
  camc_endpoint = "${var.ibm_pm_service}/v1/software_deployment/chef"
  access_token = "${var.ibm_pm_access_token}"
  skip_ssl_verify = true
  trace = true
  data = <<EOT
{
  "os_admin_user": "${var.LibertyNode01-os_admin_user}",
  "stack_id": "${random_id.stack_id.hex}",
  "environment_name": "_default",
  "host_ip": "${vsphere_virtual_machine.LibertyNode01.network_interface.0.ipv4_address}",
  "node_name": "${var.LibertyNode01-name}",
  "runlist": "role[liberty_create_server]",
  "node_attributes": {
    "ibm_internal": {
      "roles": "[liberty_create_server]"
    },
    "was_liberty": {
      "install_dir": "${var.LibertyNode01_was_liberty_install_dir}",
      "liberty_servers": {
        "server1": {
          "feature": "${var.LibertyNode01_was_liberty_liberty_servers_server1_feature}",
          "httpport": "${var.LibertyNode01_was_liberty_liberty_servers_server1_httpport}",
          "httpsport": "${var.LibertyNode01_was_liberty_liberty_servers_server1_httpsport}",
          "jvm_params": "-Xms256m -Xmx2048m",
          "keystore_id": "${var.LibertyNode01_was_liberty_liberty_servers_server1_keystore_id}",
          "name": "${var.LibertyNode01_was_liberty_liberty_servers_server1_name}",
          "users": {
            "admin_user": {
              "name": "${var.LibertyNode01_was_liberty_liberty_servers_server1_users_admin_user_name}",
              "role": "${var.LibertyNode01_was_liberty_liberty_servers_server1_users_admin_user_role}"
            }
          }
        }
      },
      "wlp_user_dir": "${var.LibertyNode01_was_liberty_wlp_user_dir}"
    }
  },
  "vault_content": {
    "item": "secrets",
    "values": {
      "was_liberty": {
        "liberty_servers": {
          "server1": {
            "keystore_password": "${var.LibertyNode01_was_liberty_liberty_servers_server1_keystore_password}",
            "users": {
              "admin_user": {
                "password": "${var.LibertyNode01_was_liberty_liberty_servers_server1_users_admin_user_password}"
              }
            }
          }
        }
      }
    },
    "vault": "${random_id.stack_id.hex}"
  }
}
EOT
}


#########################################################
##### Resource : LibertyNode01_liberty_install
#########################################################

resource "camc_softwaredeploy" "LibertyNode01_liberty_install" {
  depends_on = ["camc_bootstrap.LibertyNode01_chef_bootstrap_comp","camc_bootstrap.LibertyCentralNode01_chef_bootstrap_comp"]
  name = "LibertyNode01_liberty_install"
  camc_endpoint = "${var.ibm_pm_service}/v1/software_deployment/chef"
  access_token = "${var.ibm_pm_access_token}"
  skip_ssl_verify = true
  trace = true
  data = <<EOT
{
  "os_admin_user": "${var.LibertyNode01-os_admin_user}",
  "stack_id": "${random_id.stack_id.hex}",
  "environment_name": "_default",
  "host_ip": "${vsphere_virtual_machine.LibertyNode01.network_interface.0.ipv4_address}",
  "node_name": "${var.LibertyNode01-name}",
  "runlist": "role[liberty_install]",
  "node_attributes": {
    "ibm": {
      "im_repo": "${var.ibm_im_repo}",
      "im_repo_user": "${var.ibm_im_repo_user}",
      "sw_repo": "${var.ibm_sw_repo}",
      "sw_repo_user": "${var.ibm_sw_repo_user}"
    },
    "ibm_internal": {
      "roles": "[liberty_install]"
    },
    "was_liberty": {
      "base_version": "${var.LibertyNode01_was_liberty_base_version}",
      "edition": "${var.LibertyNode01_was_liberty_edition}",
      "install_dir": "${var.LibertyNode01_was_liberty_install_dir}",
      "install_grp": "${var.LibertyNode01_was_liberty_install_grp}",
      "install_user": "${var.LibertyNode01_was_liberty_install_user}",
      "wlp_user_dir": "${var.LibertyNode01_was_liberty_wlp_user_dir}"
    }
  },
  "vault_content": {
    "item": "secrets",
    "values": {
      "ibm": {
        "im_repo_password": "${var.ibm_im_repo_password}",
        "sw_repo_password": "${var.ibm_sw_repo_password}"
      }
    },
    "vault": "${random_id.stack_id.hex}"
  }
}
EOT
}


#########################################################
##### Resource : LibertyNode01_liberty_plugin_generate
#########################################################

resource "camc_softwaredeploy" "LibertyNode01_liberty_plugin_generate" {
  depends_on = ["camc_softwaredeploy.LibertyNode01_liberty_plugin_merge_setup"]
  name = "LibertyNode01_liberty_plugin_generate"
  camc_endpoint = "${var.ibm_pm_service}/v1/software_deployment/chef"
  access_token = "${var.ibm_pm_access_token}"
  skip_ssl_verify = true
  trace = true
  data = <<EOT
{
  "os_admin_user": "${var.LibertyNode01-os_admin_user}",
  "stack_id": "${random_id.stack_id.hex}",
  "environment_name": "_default",
  "host_ip": "${vsphere_virtual_machine.LibertyNode01.network_interface.0.ipv4_address}",
  "node_name": "${var.LibertyNode01-name}",
  "runlist": "role[liberty_plugin_generate]",
  "node_attributes": {
    "ibm_internal": {
      "roles": "[liberty_plugin_generate]"
    },
    "ssh": {
      "private_key": {
        "path": "${var.LibertyNode01_ssh_private_key_path}"
      }
    },
    "was_liberty": {
      "farm": {
        "central_node": "${var.LibertyNode01_was_liberty_farm_central_node}",
        "logFileName": "${var.LibertyNode01_was_liberty_farm_logFileName}",
        "pluginInstallRoot": "${var.LibertyNode01_was_liberty_farm_pluginInstallRoot}",
        "sslCertlabel": "${var.LibertyNode01_was_liberty_farm_sslCertlabel}",
        "sslKeyringLocation": "${var.LibertyNode01_was_liberty_farm_sslKeyringLocation}",
        "sslStashfileLocation": "${var.LibertyNode01_was_liberty_farm_sslStashfileLocation}",
        "webserverName": "${var.LibertyNode01_was_liberty_farm_webserverName}",
        "webserverPort": "${var.LibertyNode01_was_liberty_farm_webserverPort}"
      }
    }
  }
}
EOT
}


#########################################################
##### Resource : LibertyNode01_liberty_plugin_merge
#########################################################

resource "camc_softwaredeploy" "LibertyNode01_liberty_plugin_merge" {
  depends_on = ["camc_softwaredeploy.LibertyCentralNode01_liberty_plugin_generate","camc_softwaredeploy.LibertyNode01_liberty_plugin_generate"]
  name = "LibertyNode01_liberty_plugin_merge"
  camc_endpoint = "${var.ibm_pm_service}/v1/software_deployment/chef"
  access_token = "${var.ibm_pm_access_token}"
  skip_ssl_verify = true
  trace = true
  data = <<EOT
{
  "os_admin_user": "${var.LibertyNode01-os_admin_user}",
  "stack_id": "${random_id.stack_id.hex}",
  "environment_name": "_default",
  "host_ip": "${vsphere_virtual_machine.LibertyNode01.network_interface.0.ipv4_address}",
  "node_name": "${var.LibertyNode01-name}",
  "runlist": "role[liberty_plugin_merge]",
  "node_attributes": {
    "ibm_internal": {
      "roles": "[liberty_plugin_merge]"
    },
    "ssh": {
      "private_key": {
        "path": "${var.LibertyNode01_ssh_private_key_path}"
      }
    },
    "was_liberty": {
      "farm": {
        "httpd_plugins_dir": "${var.LibertyNode01_was_liberty_farm_httpd_plugins_dir}",
        "httpd_user": "${var.LibertyNode01_was_liberty_farm_httpd_user}",
        "logFileName": "${var.LibertyNode01_was_liberty_farm_logFileName}",
        "pluginInstallRoot": "${var.LibertyNode01_was_liberty_farm_pluginInstallRoot}",
        "sslCertlabel": "${var.LibertyNode01_was_liberty_farm_sslCertlabel}",
        "sslKeyringLocation": "${var.LibertyNode01_was_liberty_farm_sslKeyringLocation}",
        "sslStashfileLocation": "${var.LibertyNode01_was_liberty_farm_sslStashfileLocation}",
        "webserverName": "${var.LibertyNode01_was_liberty_farm_webserverName}",
        "webserverPort": "${var.LibertyNode01_was_liberty_farm_webserverPort}",
        "webserverhost": "${var.LibertyNode01_was_liberty_farm_webserverhost}"
      }
    }
  }
}
EOT
}


#########################################################
##### Resource : LibertyNode01_liberty_plugin_merge_setup
#########################################################

resource "camc_softwaredeploy" "LibertyNode01_liberty_plugin_merge_setup" {
  depends_on = ["camc_softwaredeploy.LibertyNode01_liberty_create_server","camc_softwaredeploy.LibertyCentralNode01_liberty_create_server"]
  name = "LibertyNode01_liberty_plugin_merge_setup"
  camc_endpoint = "${var.ibm_pm_service}/v1/software_deployment/chef"
  access_token = "${var.ibm_pm_access_token}"
  skip_ssl_verify = true
  trace = true
  data = <<EOT
{
  "os_admin_user": "${var.LibertyNode01-os_admin_user}",
  "stack_id": "${random_id.stack_id.hex}",
  "environment_name": "_default",
  "host_ip": "${vsphere_virtual_machine.LibertyNode01.network_interface.0.ipv4_address}",
  "node_name": "${var.LibertyNode01-name}",
  "runlist": "role[liberty_plugin_merge_setup]",
  "node_attributes": {
    "ibm_internal": {
      "roles": "[liberty_plugin_merge_setup]"
    },
    "ssh": {
      "private_key": {
        "path": "${var.LibertyNode01_ssh_private_key_path}"
      }
    },
    "was_liberty": {
      "farm": {
        "logFileName": "${var.LibertyNode01_was_liberty_farm_logFileName}",
        "pluginInstallRoot": "${var.LibertyNode01_was_liberty_farm_pluginInstallRoot}",
        "sslCertlabel": "${var.LibertyNode01_was_liberty_farm_sslCertlabel}",
        "sslKeyringLocation": "${var.LibertyNode01_was_liberty_farm_sslKeyringLocation}",
        "sslStashfileLocation": "${var.LibertyNode01_was_liberty_farm_sslStashfileLocation}",
        "webserverName": "${var.LibertyNode01_was_liberty_farm_webserverName}",
        "webserverPort": "${var.LibertyNode01_was_liberty_farm_webserverPort}"
      }
    }
  }
}
EOT
}


#########################################################
##### Resource : VaultItem
#########################################################

resource "camc_vaultitem" "VaultItem" {
  camc_endpoint = "${var.ibm_pm_service}/v1/vault_item/chef"
  access_token = "${var.ibm_pm_access_token}"
  skip_ssl_verify = true
  trace = true
  data = <<EOT
{
  "vault_content": {
    "item": "secrets",
    "values": {},
    "vault": "${random_id.stack_id.hex}"
  }
}
EOT
}

output "LibertyCentralNode01_ip" {
  value = "VM IP Address : ${vsphere_virtual_machine.LibertyCentralNode01.network_interface.0.ipv4_address}"
}

output "LibertyCentralNode01_name" {
  value = "${var.LibertyCentralNode01-name}"
}

output "LibertyCentralNode01_roles" {
  value = "liberty_create_server,liberty_install,liberty_plugin_generate"
}

output "LibertyNode01_ip" {
  value = "VM IP Address : ${vsphere_virtual_machine.LibertyNode01.network_interface.0.ipv4_address}"
}

output "LibertyNode01_name" {
  value = "${var.LibertyNode01-name}"
}

output "LibertyNode01_roles" {
  value = "liberty_create_server,liberty_install,liberty_plugin_generate,liberty_plugin_merge,liberty_plugin_merge_setup"
}

output "stack_id" {
  value = "${random_id.stack_id.hex}"
}

