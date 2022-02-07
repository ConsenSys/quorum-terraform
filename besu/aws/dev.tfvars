login_user = "ubuntu" # make sure this set to ec2-user if using Amazon Linux or if running custom user
node_settings = {
  ami_id        = "ami-0fb653ca2d3203ac1"
  volume_size   = 500
  instance_type = "t3.xlarge"
}
region_details = {
  region       = "ap-southeast-2"
  ssh_key      = "pegasys-sydney"                      # key name in AWS
  ssh_key_path = "~/.ssh/consensys/pegasys-sydney.pem" # local private key for associated ssh key
}
besu_bootnode_count      = "1" # please note that only 1 bootnode is supported at this time
besu_rpcnode_count       = "1"
besu_validatornode_count = "4"
besu_version             = "21.10.9"