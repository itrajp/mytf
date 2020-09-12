terraform{  
    required_version= ">=0.12"
}
resource aws_instance "eg1"{
    ami= var.AMIS[var.AWS_REGION]
    instance_type = "t2.micro"  
}
provider "aws"{
    profile = "default"
    region=     "${var.AWS_REGION}"
}
