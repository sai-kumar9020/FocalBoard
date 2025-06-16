terraform {
  backend "s3" {
    bucket = "hcltrainings"
    key    = "uc-10/terraform.tfstate"
    region = "us-east-1"
    encrypt      = true
    use_lockfile = true
  }
}