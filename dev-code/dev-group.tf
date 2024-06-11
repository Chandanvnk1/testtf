module "iam_group_with_policies" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-group-with-policies"

  name = "devadmins"
  
  tags = {
	Terraform = "true"
	Environment = "devgroup"
   }
}
