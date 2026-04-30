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
                terraform plan
                """
                sh 'sleep 10'
            }
        }
        stage('Deploy') {
            steps {
                sh """
                terraform -auto-approve
                """
            }
        }
    }
}
