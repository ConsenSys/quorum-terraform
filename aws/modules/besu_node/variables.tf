variable "network_name" {
  default = "dev"
}

variable "region_details" {
  type = map(string)
  default = {
    region = "default"
    ssh_key = "default"
    ssh_key_path = "~/.ssh/default.pem"
    private_zone_id = ""
    private_zone_name = ""
  }
}

variable "vpc_details" {
  type = map(any)
  default = {
    id = []
    vpc_cidr = ["0.0.0.0/16"]
    azs = []
    public_subnets = []
    private_subnets = []
  }
}

variable "ingress_ips" {
  type = map(any)
  default = {
    discovery_ips = []
    rpc_ips = []
  }
}

variable "node_details" {
  type = map(string)
  default = {
    node_type = "rpcnode"     # bootnode, validator, rpcnode
    node_count = 1
    provisioning_path = "files/besu"
    genesis_provisioning_path = "files/besu" 
    iam_profile = ""
    ami_id = "ami-"
    instance_type = "t5.large"
    volume_size = "500"
    bootnode_ip = "self"
  }
}

variable "tags" {
  type = map(string)
  default = {
    project_name = ""
    project_group = ""
    team = ""
  }
}

# make sure the besu_version and download_url match in the number
# eg: 1.3.8 for version is used for anything that contains 1.3.8-rc.. or 1.3.8-snapshot.. etc
variable "besu_version" {
  default = "22.1.0"
}

variable "amzn2_base_packages" {
  default = "wget curl ntp bind-utils iproute vim-enhanced git libselinux-python python python-pip python-setuptools python-virtualenv python3-pip python3 python3-setuptools jq sysstat awslogs make automake gcc gcc-c++ jq nvme-cli kernel-devel java-11-amazon-corretto.x86_64"
}

