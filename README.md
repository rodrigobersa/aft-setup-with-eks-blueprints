<a name="readme-top"></a>

[![Contributors][contributors-shield]][contributors-url]
[![Stargazers][stars-shield]][stars-url]
[![LinkedIn][linkedin-shield]][linkedin-url]

<!-- TABLE OF CONTENTS -->
<summary>Table of Contents</summary>
<ol>
  <li>
    <a href="#Summary">Summary</a>
    <ul>
      <li><a href="#discovery-and-design-phase">Discovery and Design Phase</a></li>
      <li><a href="#implementation-phase">Implementation Phase</a></li>
      <li><a href="#account-factory">Account Factory</a></li>
      <li><a href="#production-ready-eks-cluster">Production Ready EKS Cluster</a></li>
    </ul>
  </li>
  <li><a href="#prerequisites">Prerequisites</a></li>
  <li><a href="#limitations">Limitations</a></li>
  <li><a href="#product-versions">Product versions</a></li>
  <li><a href="#target-technology-stack">Target technology stack</a></li>
</ol>

# Summary

## Discovery and Design Phase

AWS Customers frequently need to review their foundation to improve infrastructure and security processes. The process is usually separated into two phases, the first of which is discovery and design, where an assessment of the current state of the infrastructure (as-is) is made, followed by an image of the desired state (as would become). During this phase, the topics of Account Structure, Networking, DNS, Security and Operations are analyzed. The output of this phase generates the architecture documents as well as patterns that will be used in the second phase, which is implementation.

## Implementation Phase

During the Implementation phase every output that has been decided upon will be built. From the beginning, with the Account Structure, there is a key product to help which is AWS Control Tower, as it provides the easiest way to set up and govern a secure, multi-account AWS environment, called a landing zone. Control Tower creates your landing zone using AWS Organizations, bringing ongoing account management and governance as well as implementation best practices based on AWS’s experience working with thousands of customers as they move to the cloud.

## Account Factory

AWS also provides the Customizations for AWS Control Tower (CFCT)  to easily add customizations to your AWS Control Tower landing zone using AWS CloudFormation templates and service control policies (SCPs). However, lately, use of Terraform to create these automations has grown a lot, making a new product necessary: the Account Factory for Terraform (AFT). In addition to delivering the same functionalities as CFCT, it has the ability to launch accounts and implement GitOps. AFT does not affect workflow performance in AWS Control Tower. For example, if either you provision an account through Account Factory, or through AFT (or both at the same time), the same back-end workflow occurs (sequentially), without any timing differences. AFT enables automation, therefore the time required for provisioning is less noticeable.

## Production Ready EKS Cluster

Once the foundation is ready, customers need to create workloads within the accounts that will be launched. A common practice is the creation of EKS clusters, due to its relatively simple creation process. Yet there are many resources that need to be created within the cluster to allow Ingress Controller, DNS, Networks, CI/CD, Cluster Autoscaler, Metrics Server, Logging among others. This deployment process is called "Day 2 Operations" and EKS Blueprints makes it easy to provision a wide range of popular Kubernetes add-ons into an EKS cluster. Customers can use EKS Blueprints to configure and deploy purpose built EKS clusters, and start onboarding workloads in days, rather than months.

### Prerequisites

* Administrator access in the AWS Management account.
* Familiarity with Terraform.
* Familiarity with CI/CD concepts and tools.
* Familiarity with Git.
* Familiarity with Kubernetes.
* Familiarity with YAML files.

First, ensure that you have installed the following tools locally.

* AWS CLI ([Linux][aws-linux], [Mac][aws-mac] and [Windows][aws-windows])
* Kubectl ([Linux][kubectl-linux], [Mac][kubectl-mac] and [Windows][kubectl-windows])

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Limitations

* Email addresses of shared accounts in the Security OU can be changed, but you must update your landing zone to see these changes in the AWS Control Tower console.
* A limit of 5 SCPs per OU applies to OUs in your AWS Control Tower landing zone.
* Existing OUs with over 300 accounts cannot be registered or re-registered in AWS Control Tower.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Product versions

<!-- prettier-ignore-start -->
Product | Version
--- | ---
[![CT][CT]][CT] | ![up-to-date badge](https://img.shields.io/badge/3.0.0-brightgreen)
[![blueprints][blueprints]][blueprints] | ![up-to-date badge](https://img.shields.io/badge/4.6.2-brightgreen)
[![terraform][terraform]][terraform] | ![up-to-date badge](https://img.shields.io/badge/1.2.6-brightgreen)
[![EKS][EKS]][EKS] | ![up-to-date badge](https://img.shields.io/badge/1.2.3-brightgreen)
<!-- prettier-ignore-end -->

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Target technology stack

* A new AWS Account with the Guardrails and all the desired customizations.
* A new EKS Cluster with a managed node group.
* Amazon EKS add-ons vpc-cni, CoreDNS, kube-proxy, and aws-ebs-csi-driver.
* Cluster Autoscaler and Metrics Server for scaling your workloads.
* Fluent Bit for routing logs.
* AWS Load Balancer Controller for distributing traffic.
* Argocd for declarative GitOps CD for Kubernetes.
* Prometheus for observability.

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/edgarsilva948/aft-setup.svg?style=for-the-badge
[contributors-url]: https://github.com/edgarsilva948/aft-setup/graphs/contributors
[stars-shield]: https://img.shields.io/github/stars/edgarsilva948/aft-setup.svg?style=for-the-badge
[stars-url]: https://github.com/edgarsilva948/aft-setup/stargazers
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/edgarsilva948
[aws-linux]: https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-linux.html
[aws-windows]: https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-windows.html
[aws-mac]: https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-mac.html
[kubectl-linux]: https://docs.aws.amazon.com/eks/latest/userguide/install-kubectl.html#install-kubectl-linux
[kubectl-windows]: https://docs.aws.amazon.com/eks/latest/userguide/install-kubectl.html#install-kubectl-windows
[kubectl-mac]: https://docs.aws.amazon.com/eks/latest/userguide/install-kubectl.html#install-kubectl-macos

<!-- MARKDOWN IMAGES -->
[terraform]: https://img.shields.io/badge/Terraform-7B42BC?style=for-the-badge&logo=terraform&logoColor=white
[EKS]: https://img.shields.io/badge/EKS-326DE6?style=for-the-badge&logo=kubernetes&logoColor=white
[CT]: https://img.shields.io/badge/AWS_Control_Tower-232F3E?style=for-the-badge&logo=amazon-aws&logoColor=white
[blueprints]: https://img.shields.io/badge/EKS_Blueprints-232F3E?style=for-the-badge&logo=amazon-aws&logoColor=white