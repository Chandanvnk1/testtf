module "iam_group_with_policies" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-group-with-policies"

  name = "prodadmins"
  
  tags = {
	Terraform = "true"
	Environment = "prod-group"
   }
}
