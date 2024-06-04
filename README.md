# terraform-basics

## This repository contains all the needed basics to start using terraform
---
Terraform is an open-source infrastructure as code (IaC) software tool created by HashiCorp. It allows users to define and provision data center infrastructure using a high-level configuration language known as HashiCorp Configuration Language (HCL), or optionally JSON.
Key Features of Terraform

    Infrastructure as Code (IaC):
        Terraform allows the infrastructure to be described and managed using code. This enables version control, sharing, and collaboration, similar to how software code is managed.

    Declarative Configuration:
        Users describe the desired state of the infrastructure, and Terraform takes care of the steps to achieve that state. This approach simplifies the process of managing complex environments.

    Provider Ecosystem:
        Terraform supports a wide range of cloud providers (AWS, Azure, Google Cloud) and other services (Kubernetes, GitHub). This allows a single tool to manage infrastructure across multiple environments.

    Execution Plans:
        Terraform generates an execution plan that shows what actions will be taken to achieve the desired state. This helps in understanding the changes and prevents unexpected results.

    Resource Graph:
        It builds a graph of all resources and parallelizes the creation and destruction of non-dependent resources, which speeds up the process.

    State Management:
        Terraform keeps track of the state of the infrastructure, which helps in determining the actions needed to achieve the desired configuration.

### Why Companies Need Terraform

    Consistency and Repeatability:
        Infrastructure as code ensures that the same configuration can be applied in multiple environments (development, staging, production) consistently.

    Version Control:
        Infrastructure configurations can be version-controlled, enabling tracking of changes, rollbacks, and collaboration among team members.

    Scalability:
        Managing infrastructure at scale manually can be error-prone and time-consuming. Terraform automates these tasks, making it easier to scale up or down.

    Cost Management:
        By automating infrastructure provisioning and de-provisioning, Terraform helps in optimizing resource usage and reducing costs.

    Disaster Recovery:
        Terraform configurations can be used to quickly recreate infrastructure in case of a disaster, improving resilience and recovery times.

### Why Companies Adopt Terraform

    Multi-Cloud Strategy:
        Terraform supports multiple cloud providers, allowing companies to adopt a multi-cloud strategy without being locked into a single provider.

    Automation:
        Terraform integrates well with CI/CD pipelines, enabling continuous delivery and automated deployment of infrastructure.

    Community and Ecosystem:
        Terraform has a large and active community, which contributes to a rich ecosystem of modules, plugins, and best practices.

    Flexibility and Extensibility:
        Terraform's plugin architecture allows for extending its capabilities and integrating with other tools and services.

    Reduced Human Error:
        Automating infrastructure management reduces the risk of human error, leading to more reliable and stable environments.

By adopting Terraform, companies can achieve greater agility, efficiency, and reliability in managing their infrastructure, which is crucial for modern IT environments.

---

### There are 4 basic and imp commands of terraform
---
terraform init:    command initializes a Terraform working directory by performing the following tasks:

    Downloads Provider Plugins: Fetches necessary provider plugins to interact with cloud services.
    Initializes Backend: Sets up the remote backend for storing the Terraform state file.
    Installs Modules: Downloads any modules referenced in the configuration.
    Prepares Directory: Sets up the local working directory with necessary files.

In essence, terraform init prepares your environment to manage infrastructure with Terraform.

terraform plan:   command is used to create an execution plan for Terraform. It does the following:

    Reads Current State: Loads the current state of the infrastructure.
    Evaluates Configuration: Compares the current state with the desired state defined in the configuration files.
    Generates a Plan: Outputs a detailed plan showing the changes that Terraform will make to reach the desired state (e.g., creating, updating, or destroying resources).

This command helps you review the potential changes before applying them, ensuring you understand what Terraform will do.

terraform apply:   command executes the actions proposed in a Terraform plan to create, update, or delete infrastructure resources. Here’s what it does:

    Reads Configuration Files: Reads the configuration files to understand the desired state of the infrastructure.
    Generates and Executes Plan: If a plan is not provided, it generates one. Then it proceeds to apply the changes specified in the plan.
    Updates State: After making the changes, it updates the state file to reflect the current state of the infrastructure.

In essence, terraform apply makes the actual changes to your infrastructure as defined by your Terraform configuration
---
### In Terraform, the symbols +, -, and +/- in the plan output mean:

    + (Add): A new resource will be created.
    - (Destroy): An existing resource will be destroyed.
    +/- (Replace): An existing resource will be replaced, meaning it will be destroyed and then recreated.

#### when to user varialbes in quotes and $ notations
Whenever your variable is enclosed in a set of string or between a sentance, then we have to enclose them in strings and with bash notation.data 
Strings are supposed to be enclosed to be in double quotes while numbers and booleans doent need any type of quotes.
