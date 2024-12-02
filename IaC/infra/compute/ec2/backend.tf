terraform {
  backend "s3" {
    bucket         = "home-bucks-tfs"
    key            = "recipe-compute/compute.tfstate"
    region         = "us-east-1"
    dynamodb_table = "tf-prj-recipe"
  }
}
