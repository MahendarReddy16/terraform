## Terraform ##

Terraform is an IaC(infrastructure as code) tool developed by the Hashicrop and that lets you to create, configure, manage, and provision infrastructure using the configuration files instead of creating the resources manually through cloud consoles.

## Advantages of Terraform ##
1. Infrastructure as Code
   - Infrastructure is defined in code.
   - Easy to maintain and reproduce.
2. Automation
   - Automates infrastructure creation and management.
   - Reduces manual work.
3. Multi-Cloud Support
   - Can manage AWS, Azure, GCP, Kubernetes, etc.
   - Useful for multi-cloud environments.
4. Version Control
   - Terraform files can be stored in Git.
   - We can track changes and roll back when required.
5. Execution Plan
   - terraform plan shows what changes Terraform will make before applying them.
6. State Management
   - Terraform maintains a state file (terraform.tfstate) to track the infrastructure it manages.
7. Reusable Modules
   - We can create Terraform modules and reuse infrastructure configurations across environments.
8. Consistency
   - The same configuration can be used to create Dev, UAT, and Production environments consistently.


## Disadvantages of Terraform ##
1. State File Management
   - Terraform relies on the state file.
   - If the state is lost or corrupted, managing infrastructure can become difficult.
2. Learning Curve
   - Beginners need to understand HCL, providers, resources, state, modules, variables, etc.
3. Manual Import
   - Existing infrastructure created outside Terraform may need to be imported into Terraform.
4. Provider Dependency
   - Terraform depends on providers such as AWS, Azure, and GCP.
   - Provider version compatibility can sometimes cause issues.
5. State File Security
   - State files can contain sensitive information.
   - They must be stored securely, often using a remote backend with encryption and access control.
6. Changes Can Be Destructive
   - Incorrect configuration can cause Terraform to modify or destroy resources.

## commands ##

Initializes the Terraform project and downloads required providers/modules.
```
terraform init
```
Checks whether the Terraform configuration is valid.
``` 
terraform validate
```
Shows what changes Terraform will make before applying them.
```
terraform plan
```
Creates or updates the infrastructure according to the configuration.
```
terraform apply
```
or
```
terraform apply -auto-approve
```
Deletes the infrastructure managed by Terraform.
```
terraform destroy
```


Terraform Providers: AWS, AZURE, Alibaba, Digital Ocean, GitHub, Networking, etc.... this all are the providers.

Terraform Resources: What we create is called as Resources.


## Terraform Installation

1. Download Terraform
2. Place terraform.exe in some folder
3. Edit the environment variables, Provide the path.

4. Install AWS command line to connect

keep .gitignore always

