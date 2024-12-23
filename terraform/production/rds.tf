resource "aws_db_instance" "postgres" {
  identifier        = "my-postgres-db"
  engine            = "postgres"
  instance_class    = "db.t3.medium"
  allocated_storage = 20
  db_name           = "clientdb"
  username          = "admin"
  password          = "password"
  skip_final_snapshot = true
  vpc_security_group_ids = [aws_security_group.db_sg.id]
  db_subnet_group_name = aws_db_subnet_group.db_subnet_group.name

  tags = {
    Name = "Client Database"
  }
}

resource "aws_db_subnet_group" "db_subnet_group" {
  name       = "my-db-subnet-group"
  subnet_ids = [aws_subnet.eks_subnet.id]
}
