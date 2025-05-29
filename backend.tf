terraform {
  backend "s3" {
    bucket         = "cicd-jenkins-server"   # Name of the S3 bucket
    key            = "ci-cd" # Path to store the state file inside the bucket
    region         = "us-east-1"                    # Region where the S3 bucket is located
    encrypt        = true                           # Optional: Encrypt the state file in S3
    acl            = "bucket-owner-full-control"    # Optional: Set the ACL for the S3 bucket (recommended)
  }
}
