variable "region" {    
    default = "eu-west-1"
}
variable "ami" {
    type = map(string)

    default = {
        # For demo purposes only, we are using ubuntu for the web1 and db1 instances
        eu-west-1 = "ami-08ca3fed11864d6bb" # Ubuntu 20.04 x86
    }
}
variable "ec2_user" {
    default = "ubuntu"
}
variable "public_key_path" {
    default = "~/.ssh/id_rsa.pub" # Replace this with a path to your public key
}