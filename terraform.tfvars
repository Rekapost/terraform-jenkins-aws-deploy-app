#bucket_name = "dev-proj-1-jenkins-remote-state-bucket"
#name        = "environment"
#environment = "dev-1"

vpc_cidr             = "10.0.0.0/16"
vpc_name             = "dev-proj-jenkins-us-east-vpc-1"
cidr_public_subnet   = ["10.0.1.0/24", "10.0.2.0/24"]
cidr_private_subnet  = ["10.0.3.0/24", "10.0.4.0/24"]
us_availability_zone = ["us-east-1a", "us-east-1b"]

public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCW2zKxqQbVVxeltJ202SBHc6o87n2O+b37j08J+VjGoTozwPR3L31dZjb2Dpj1kcWNf+7WbX1eEra37ik7mlTHjteQ8S2AdLuxCaCoJC0A1EJstp4HgczIBEKB+SVSVslY9E2j+jYX9VjjnXExYkE7FepVxddaNMBLSNcvmyYR7nzrNRz/XwlBS/oJegjFHZM2g6mgxhvkSD3AGLUIT8JiiC4cyoGIvak5m7szu8H426Fixx+2O/ZfwXr1Q3R+Y5v5U8kk9tPAW/V/0FBbh7bwlAlbzpVHrzV/IoyTmVB8TU+ZN1yf8l6sbAjfFvQRbIJ/RiRat2h2mm37aJqPrCWRa1Q6wEOCoROOJzSiT+nRaydAgCn4zQf80cv5gegB3DdpnmqTOW9hK09JpvQwNzjxUF/mnivqhL6lWS0tW9shaYS0nw9HLugmVzBXgNUvCw91OhVIpdrqUktGM1tZ/t6j38LwVymE720FosGGyEIWaYCvJSjAZzbheMJJOjkGrOc= reka@Reka"
ec2_ami_id     = "ami-0866a3c8686eaeeba"

#ec2_user_data_install_apache = ""
#domain_name = "jhooq.org"