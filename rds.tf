# database subnet group
resource "aws_db_subnet_group" "database_subnet_group" {
  name         = "dev-rds-db"
  subnet_ids   = 
  description  = "Intancia de la base de datos"

  tags   = {
    Name = "Dev rds db"
  }
}

data "aws_db_snapshot" "latest_db_snapshot" {
  db_snapshot_identifier = 
  most_recent            = 
  snapshot_type          = 
}

resource "aws_db_instance" "database_instance" {
  instance_class          = 
  skip_final_snapshot     = 
  availability_zone       = 
  identifier              = 
  snapshot_identifier     = 
  db_subnet_group_name    = 
  multi_az                = 
  vpc_security_group_ids  = 
}