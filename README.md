# DevOps Mini Project: Automating AWS Infrastructure with Terraform and Jenkins

## 📌 Project Objective
This project implements a complete Infrastructure-as-Code (IaC) CI/CD workflow. It automates the provisioning of AWS network infrastructure (VPC, Subnet, Internet Gateway, Route Table) using Terraform, triggered automatically by GitHub webhooks and orchestrated by Jenkins.

## 🏗️ Architecture
Developer → Git Push → GitHub → Webhook → Jenkins → Terraform → AWS (with State stored in Amazon S3)

## 🛠️ Tech Stack
- **Version Control:** Git & GitHub
- **CI/CD Server:** Jenkins
- **Infrastructure as Code:** Terraform
- **Cloud Provider:** AWS (EC2, VPC, S3)
- **OS:** Linux (Ubuntu)

## 📂 Project Structure
```text
terraform-jenkins-project/
├── backend.tf          # S3 remote state configuration
├── main.tf             # Root module calling the VPC module
├── provider.tf         # AWS provider configuration
├── variables.tf        # Input variables
├── outputs.tf          # Exposed outputs (VPC ID, Subnet ID)
├── .gitignore          # Ignores .terraform/ and *.tfstate
├── Jenkinsfile         # CI/CD pipeline definition
└── modules/
    └── vpc/
        ├── main.tf     # VPC, Subnet, IGW, Route Table resources
        ├── variables.tf
        └── outputs.tf
