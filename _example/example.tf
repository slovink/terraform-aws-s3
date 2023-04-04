#region = "ap-south-1"

module "s3-logs_bucket" {
  source = "./../"

  versioning = true

  name        = "venddor-vpc-bucket"
  environment = "test"
  label_order = ["environment","name"]

  acl = "private"
}
