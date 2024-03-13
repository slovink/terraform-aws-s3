provider "aws" {
  region = "us-west-1"
}

module "s3-logs_bucket" {
  source = "./../"

  versioning = true

  name        = "slovink-vpc-bucket"
  environment = "test"
  label_order = ["environment", "name"]

  acl = "private"
}
