terraform {
  backend "s3" {
    bucket = "<BUCKET-NAME>"
    key    = "state"
    region = "us-east-1"
  }
}