pipeline {
    agent {
        label 'AGENT-1'
        
    }
    options {
        // Timeout counter starts AFTER agent is allocated
        timeout(time: 30, unit: 'MINUTES')
    }
    stages {
        stage('init') {
            steps {
                sh """
                cd 01-vpc
                terraform init -reconfigure

                """
                
            }
        }
        stage('plan') {
            steps {
                sh """
                cd 01-vpc
                terraform plan
                """
            }
        }
        stage('Deploy') {
            input {
                message "Should we continue?"
                ok "Yes, we should."
            }
            steps {
                sh """
                cd 01-vpc
                terraform apply -auto-approve
                """
            }
        }
    }
}
