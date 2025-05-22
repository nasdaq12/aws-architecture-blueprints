output "aurora_cluster_id" {
  description = "Primary Aurora cluster identifier"
  value       = aws_rds_cluster.primary.id
}

output "dr_replica_cluster_id" {
  description = "DR Aurora replica cluster identifier"
  value       = aws_rds_cluster.dr_replica.id
}
