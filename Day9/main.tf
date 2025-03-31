
resource "aws_db_instance" "rds-mysql" {
  engine               = "mysql"
  identifier           = "database-2"
  allocated_storage    =  20
  engine_version       = "8.0.40"
  instance_class       = "db.t4g.micro"
  username             = "adminuser"
  password             = "myrdspassword#1213"
  parameter_group_name = "default.mysql8.0"
  skip_final_snapshot  = true
  publicly_accessible =  true
}
