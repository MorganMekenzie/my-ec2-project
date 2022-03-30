terraform {
  backend "s3" {
    bucket = "myfirst-bucket-233353466532-tfstates-morgan"
    key    = "morgan.middleton/my-ec2-project/terraform.tfstates"
    dynamodb_table = "terraform-lock"
  }
}