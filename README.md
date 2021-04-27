## Preparations
1. Terraform v0.14.7 (at least)

2. Helm 3.4.1

3. Generate token in Digital Ocean

## Installation

1. terraform init

2. terraform plan -var 'do_token=<generated_token>'

3. terraform apply -var 'do_token=<generated_token>'

## Checks

1. Install [doctl](https://github.com/digitalocean/doctl#installing-doctl)

2. doctl auth init --context test

3. doctl auth switch --context test

4. doctl kubernetes cluster list

5. doctl kubernetes cluster kubeconfig save development

6. helm ls

## Destroy

terraform destroy -var 'do_token=<generated_token>'
