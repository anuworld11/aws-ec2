terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.0.0-beta1"
    }
    /*random = {
      source  = "hashicorp/random"
      version = "3.7.2"ß
    }*/
  }
  backend "s3" {    
    bucket         = "my-test-backends301-tfstate"
    key            = "terraform.tfstate"
    region         = "eu-west-1"
    //dynamodb_table = "my-dynamodb-table_state"
    
    }
}

provider "aws" {
  region = "eu-west-1"
}



