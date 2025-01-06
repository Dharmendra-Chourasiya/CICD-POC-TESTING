pipeline {
    agent any


    stages {
        stage('Checkout from SCM') {
            steps {
                git branch: 'main', url: 'https://github.com/Dharmendra-Chourasiya/CICD-POC-TESTING.git'
            }
        }

        stage('mvn clean') {
            steps {
                sh 'mvn clean compile'
            }
        }
        
        stage('Build & Test') {
            steps {
                sh 'mvn clean package'
            }
        }
        
    }
}

