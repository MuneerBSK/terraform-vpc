pipeline {
    agent any 
    parameters { 
        choice(name: 'ENV', choices: ['dev', 'prod'], description: 'Choose the environment') 
        choice(name: 'ACTION', choices: ['apply', 'destroy'], description: 'Choose Apply or Destroy') 
    }
    stages {
        stage('Terraform Init') {
            steps {
                script {
                    sh "terrafile -f env-${ENV}/Terrafile"
                    sh "terraform init -backend-config=env-${ENV}/${ENV}-backend.tfvars"
                }
            }
        }
        stage('Terraform Plan') {
            steps {
                script {
                    sh "terraform plan -var-file=env-${ENV}/${ENV}.tfvars"
                }
            }
        }
        stage('Terraform Apply/Destroy') {
            steps {
                script {
                    sh "terraform ${ACTION} -var-file=env-${ENV}/${ENV}.tfvars -auto-approve"
                }
            }
        }
    }
}
