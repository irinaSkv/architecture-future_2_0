project            = "future20"

cloud_id           = "you_value_here"
folder_id          = "you_value_here"
zone               = "ru-central1-a"

public_subnet_cidr  = "10.10.0.0/24"
private_subnet_cidr = "10.10.1.0/24"

ssh_user            = "ubuntu"
ssh_public_key_path = "~/.ssh/yc_terraform.pub"
ssh_allowed_cidrs   = ["0.0.0.0/0"]

bastion_boot_disk_gb       = 8
data_platform_boot_disk_gb = 8
portal_boot_disk_gb        = 8