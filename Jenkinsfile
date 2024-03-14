@Library('roboshop-shared-library@main') _
env.REPONAME="terraform-vpc"
terraform()

    pipeline {
        agent any 
        stages {
            stage('Terraform Init') {
                steps {
                    sh "terrafile -f env-${ENV}/Terrafile"
                    sh "terraform init -backend-config=env-${ENV}/${ENV}-backend.tfvars"
                }
            }
            stage('Terraform Plan') {
                steps {
                    sh "terraform plan -var-file=env-${ENV}/${ENV}.tfvars"
                }
            }
            stage('Terraform Apply ') {
                steps {
                    sh "terraform ${ACTION} -var-file=env-${ENV}/${ENV}.tfvars -auto-approve"
                    }
                }
            }
        }