terraform {
  backend "s3" {
    bucket       = "zen-pharma-terraform-state-cool123"  # Replace with your S3 bucket name
    key          = "envs/dev/terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true   # S3 native locking (Terraform >= 1.11)
  }
}
