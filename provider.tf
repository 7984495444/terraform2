provider "aws" {
  region = var.aws_region
  access_key = "AKIAS62M2BSUXGMHHXUD"
  secret_key = "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"
}

resource "aws_s3_bucket" "my-s3-bucket" {
  bucket_prefix = var.bucket_prefix
  acl = var.acl
  
   versioning {
    enabled = var.versioning
  }
  
  tags = var.tags
}
