📘 README.md
markdown
# 🚀 Terraform Modular Infrastructure: VPC + EC2 + EBS

This project demonstrates a **custom modular Terraform setup** for provisioning scalable and secure infrastructure on AWS. Designed for SREs and DevOps engineers, it avoids third-party modules and emphasizes clean, reusable code.

## 📦 Project Overview

The infrastructure includes:

- A custom **VPC module** with public subnet and routing
- A **compute module** that launches multiple EC2 instances with unique EBS volumes
- Security groups for SSH and HTTP access
- Outputs for VPC, subnet, instance IDs, and public IPs

All modules are written from scratch — no use of `terraform-aws-modules/*`.

---

## 🧱 Modules

### 1. `vpc` Module

Creates:

- VPC with configurable CIDR block
- Public subnet in a specified Availability Zone
- Internet Gateway and Route Table
- Route Table Association

**Outputs:**

- `vpc_id`
- `subnet_id`

### 2. `compute` Module

Creates:

- Multiple EC2 instances (default: 4)
- Each with:
  - Unique Name tag
  - Custom EBS volume size
  - User-defined instance type
  - SSH key pair
- Security Group allowing SSH (port 22) and HTTP (port 80)

**Outputs:**

- `instance_ids`
- `public_ips`

---

## 🔧 Usage

### 1. Clone the Repository

```bash
git clone https://github.com/<your-username>/terraform-custom-infra.git
cd terraform-custom-infra
2. Configure Variables
Edit terraform.tfvars:

hcl
ebs_sizes = [8, 16, 32, 64]
key_name  = "your-ssh-key-name"
Ensure your SSH key exists in AWS EC2 → Key Pairs.

3. Initialize Terraform
bash
terraform init
4. Preview the Plan
bash
terraform plan
5. Apply the Configuration
bash
terraform apply
📤 Outputs
After deployment, Terraform will display:

VPC ID

Subnet ID

EC2 Instance IDs

Public IPs for SSH/HTTP access

📁 File Structure
plaintext
terraform-custom-infra/
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars
├── modules/
│   ├── vpc/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   └── compute/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
🌍 AWS Region
Default region is us-east-1. You can change it in main.tf under the provider block.

📚 Why This Project Stands Out
✅ 100% custom modules — no external dependencies

✅ Scalable and production-ready structure

✅ Clear separation of concerns

✅ Easy to extend for private subnets, ALBs, RDS, etc.

✅ Ideal for interviews, portfolios, and real-world SRE work

🤝 Contributing
Feel free to fork, improve, or extend the modules. PRs welcome!

📬 Contact
Created by Srinidhi 📧 Reach out via GitHub or LinkedIn for collaboration or feedback.