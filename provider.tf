provider "aws" {
  region = var.region
  access_key = csvdecode(file("aws_secret.csv"))[0].access_key
  secret_key = csvdecode(file("aws_secret.csv"))[0].secret_key

}

