**Flask Portfolio App with Terraform on AWS**
This project demonstrates the deployment of a simple Python Flask portfolio application on an AWS EC2 instance using Terraform. The infrastructure is created within a VPC with a public subnet, allowing access to the application from the internet.

**Table of Contents**
1. Clone the Repository
2. Install Terraform
3. Configure AWS CLI
4. Deploy the Infrastructure
5. Access the Flask App

**Prerequisites**
Before you begin, ensure you have the following installed:
Terraform
AWS CLI
An AWS account with programmatic access configured (aws configure)
An SSH key pair in your AWS account for EC2 access

**Project Structure**

├── app.py                  # Flask application script

├── requirements.txt        # Python dependencies

├── main.tf                 # AWS provider configuration

├── vpc.tf                  # VPC and Subnet configuration

├── security_group.tf       # Security Group configuration

├── ec2.tf                  # EC2 instance configuration with Flask app setup

├── outputs.tf              # Terraform output for instance IP

└── README.md               # This README file

**Follow these steps to deploy the Flask application on AWS.**
1. Clone the Repository
Clone this repository to your local machine:
git clone https://github.com/yourusername/flask-terraform-app.git
cd flask-terraform-app

2. Install Terraform
If Terraform is not already installed, download and install it from here.

3. Configure AWS CLI
Make sure your AWS CLI is configured with appropriate credentials:

bash
aws configure
4. Deploy the Infrastructure
Initialize Terraform and deploy the infrastructure:

bash
terraform init
terraform apply
Terraform will prompt you for confirmation. Type yes to proceed. This will set up a VPC, subnet, security group, and an EC2 instance running the Flask app.

5. Access the Flask App
Once Terraform completes, it will output the public IP of the EC2 instance. Open your browser and navigate to:
http://<EC2_INSTANCE_IP>:5000
You should see your Flask portfolio app running.

**Cleanup**
To avoid incurring charges, destroy the infrastructure when you're done:
terraform destroy
Type yes when prompted.
