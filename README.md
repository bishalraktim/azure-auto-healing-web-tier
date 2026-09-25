# Azure Auto-Healing Web Tier

## Overview

This project deploys an auto-healing web tier in Microsoft Azure using Terraform.

The solution is designed to maintain web availability if a single virtual machine instance is lost. Traffic is distributed across multiple instances behind an Azure Load Balancer, while the compute platform maintains the required instance capacity.

A lightweight NGINX web server is provisioned automatically on each instance.

## Objectives

The solution is designed to demonstrate:

- Self-healing infrastructure where a terminated instance is automatically replaced.
- Infrastructure provisioning entirely through Infrastructure as Code (IaC).
- Idempotent Terraform deployments where a subsequent plan reports no infrastructure changes.
- N+1 capacity with at least two web instances behind a load balancer.
- Automatic provisioning of an NGINX web page.
- Clear naming, tagging, variables and reusable Terraform structure.
- A fully deployed estimated monthly cost of no more than AUD 20.

## Technology Choices

### Cloud Platform

Microsoft Azure was selected because of existing hands-on experience with Azure infrastructure and Microsoft hybrid environments.

### Infrastructure as Code

Terraform was selected as the Infrastructure as Code platform. The project is being developed and validated using Terraform 1.16.4.

## Proposed Architecture

The initial design consists of:

- Azure Resource Group
- Virtual Network
- Subnet
- Network Security Group
- Public IP address
- Azure Load Balancer
- Load Balancer health probe and rule
- Azure Virtual Machine Scale Set
- Minimum of two Linux VM instances
- NGINX automatically provisioned on each instance

The final architecture will be confirmed after implementation and validation of the self-healing behaviour and cost requirements.

> Architecture diagram to be added after the design is validated.

## Repository Structure

The repository structure will evolve as the solution is implemented. Terraform configuration, documentation, architecture diagrams and validation evidence will be maintained within this repository.

## Prerequisites

Development environment:

- Windows 11
- PowerShell 7.6.6
- Terraform 1.16.4
- Azure CLI 2.90.0
- Git 2.55.0
- Visual Studio Code

Azure authentication is performed interactively using Azure CLI. Credentials, subscription identifiers and other account-specific information are not stored in this repository.

## Deployment

Terraform deployment instructions will be documented here as the configuration is implemented and validated.

Planned workflow:

1. Initialise Terraform.
2. Validate the configuration.
3. Review the Terraform execution plan.
4. Apply the configuration.
5. Validate the deployed web tier.
6. Run a second Terraform plan to confirm idempotency.

Exact commands and expected results will be added after validation.

## Validation

The completed solution will be tested for:

- Successful infrastructure provisioning.
- Two or more healthy web instances.
- Load-balanced access to the NGINX web tier.
- Continued web availability during the loss of a single instance.
- Automatic replacement of a terminated instance.
- Successful provisioning of NGINX on the replacement instance.
- Terraform idempotency.
- Infrastructure cleanup using Terraform.

Validation evidence will be added as testing is completed.

## Security

The implementation will follow these principles:

- No credentials or secrets committed to source control.
- Terraform state excluded from the Git repository.
- Terraform variable files containing environment-specific values excluded from source control.
- No individual public IP addresses assigned to backend VM instances.
- Network access restricted to only what is required by the web tier.
- Azure authentication handled outside the Terraform configuration.

Security controls will be updated as the architecture is implemented.

## Cost Estimate

The architecture will be designed to remain within an estimated monthly cost of AUD 20 when fully deployed.

The final estimate, Azure region, VM SKU and pricing assumptions will be documented after current Azure pricing is validated.

## Assumptions

- The solution is intended as a demonstration/lab workload rather than a production application.
- HTTP is sufficient for demonstrating load balancing and instance recovery.
- The default NGINX page is sufficient for validating the web tier.
- Backend instances do not require individual public IP addresses.

Additional assumptions will be documented as implementation progresses.

## Optional Enhancements

After the core requirements have been implemented and validated, the project will target:

- Containerising the web page with Docker.
- Publishing the container image to a free container registry.
- Automatically pulling and running the container on each instance.
- A CI workflow for Terraform formatting, validation and/or planning.

These enhancements will only be added after the mandatory infrastructure requirements are proven.

## Cleanup

Terraform-based cleanup instructions and validation will be documented after deployment testing is completed.