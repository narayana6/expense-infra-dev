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
                ls -lrt

                """
                
            }
        }
        stage('Test') {
            steps {
                sh 'echo This is Test'
                sh 'sleep 10'
            }
        }
        stage('Deploy') {
            steps {
                sh 'echo This is Deploy'
            }
        }
    }
}
