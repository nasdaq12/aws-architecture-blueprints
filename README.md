# 🛠️ AWS Infrastructure-as-Code (IaC) Blueprint Library

This repository is a professional-grade starter kit for managing, deploying, and documenting AWS cloud infrastructure using both **Terraform** and **AWS CDK (Python)**. It’s tailored for:

- 🧠 **AWS Certified Solutions Architect – Professional** candidates
- 👷 **Cloud Engineers** building reusable, auditable infrastructure
- 📦 **Teams adopting GitOps**, IaC automation, and DR best practices

---

## 📁 Repository Structure

```
aws-iac-blueprints/
├── README.md                # Overview and instructions
├── terraform/               # Terraform modules and deployments
│   ├── aurora-warm-standby/ # DR-ready Aurora Global DB
│   └── backend.tf           # Optional remote backend config
│
├── cdk/                     # AWS CDK (Python) app stacks
│   ├── vpc-lb-ec2-stack/    # Classic 3-tier web stack
│   └── app.py               # CDK app entrypoint
│
├── common-modules/         # Shared infra blocks (e.g., VPC, ALB, IAM)
│
└── projects/               # Real-world scenarios
    ├── org-setup-scp-sso/  # Multi-account AWS Org setup
    └── global-api-serverless/ # Lambda + API Gateway + Global Accelerator
```

---

## 📦 Use Case Examples

### 🔁 `aurora-warm-standby` (Terraform)
- Cross-Region DR deployment using Aurora Global DB
- Includes EC2 warm standby, Route 53 failover
- Targets RTO < 15 min, RPO < 5 sec

### 🧱 `vpc-lb-ec2-stack` (CDK)
- Deploys a basic web app architecture
- VPC, public/private subnets, EC2 Auto Scaling, ALB

### 🔐 `org-setup-scp-sso`
- Builds AWS Organizations, SCP policies, IAM Identity Center integration
- Enforces least privilege + centralized logging

### 🌍 `global-api-serverless`
- Global, serverless REST API
- Lambda, API Gateway, Route 53, Global Accelerator
- Uses CloudFront for latency optimization

---

## 🚀 Getting Started

```bash
# Clone the repo
git clone https://github.com/yourname/aws-iac-blueprints.git
cd aws-iac-blueprints

# Deploy CDK project
cd cdk/vpc-lb-ec2-stack
cdk bootstrap && cdk deploy

# Deploy Terraform project
cd terraform/aurora-warm-standby
terraform init && terraform apply
```

---

## ✅ Best Practices

- Modularize everything (VPCs, databases, IAM)
- Tag your infra with project + owner info
- Use Git branches per feature/environment
- Document RTO/RPO assumptions in each module’s README

---

## 🧠 License & Credits
This repo is maintained by cloud architect and AWS SA-Pro trainer @you. Inspired by the style of Adrian Cantrill and AWS Well-Architected Framework.

MIT License. Use and modify freely.

