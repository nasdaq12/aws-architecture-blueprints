provider "aws" {
  region = "eu-west-2"
}

resource "aws_rds_cluster" "primary" {
  cluster_identifier = "aurora-primary"
  engine             = "aurora-mysql"
  master_username    = "admin"
  master_password    = "SecurePassword123"
  skip_final_snapshot = true
}

resource "aws_rds_cluster_instance" "primary_instances" {
  count              = 2
  identifier         = "aurora-instance-${count.index}"
  cluster_identifier = aws_rds_cluster.primary.id
  instance_class     = "db.t3.medium"
}

provider "aws" {
  alias  = "dr"
  region = "us-west-2"
}

resource "aws_rds_cluster" "dr_replica" {
  provider                       = aws.dr
  cluster_identifier             = "aurora-dr-replica"
  engine                         = "aurora-mysql"
  replication_source_identifier  = aws_rds_cluster.primary.arn
  skip_final_snapshot            = true
  source_region                  = "eu-west-2"
}
