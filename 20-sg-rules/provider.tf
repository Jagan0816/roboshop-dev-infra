terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "6.48.0"
        }
    }

    backend "s3" {
        bucket = "remote-state-90s-jagan-dev"
        key = "roboshop-sg-rules.tfstate"
        region = "us-east-1"
        encrypt = true
    }
}

provider "aws" {
    region = "us-east-1"
}