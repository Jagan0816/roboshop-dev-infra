module "sg" {
    count = length(var.sg_name)
    source = "git::https://github.com/Jagan0816/terraform-aws-sg.git?ref=main"
    project = var.project
    environment = var.environment
    vpc_id = local.vpc_id
    sg_name = replace(var.sg_name[count.index],"_","-")
}