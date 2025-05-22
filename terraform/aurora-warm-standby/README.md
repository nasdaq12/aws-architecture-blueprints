# Aurora Warm Standby (Terraform)

This module deploys a warm standby DR architecture:
- Aurora Global Database (MySQL)
- Cross-region read replica in DR region
- EC2 + Auto Scaling group
- Route 53 health checks and DNS failover

**RTO**: < 15 minutes  
**RPO**: < 5 seconds
