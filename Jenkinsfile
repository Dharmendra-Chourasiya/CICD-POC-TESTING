pipeline {
    agent any
    environment{
    SCANNER_HOME= tool 'sonar-scanner'
    }

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

        stage('SONARQUBE ANALYSIS') {
            steps {
                withSonarQubeEnv('sonar-scanner') {
                    sh " $SCANNER_HOME/bin/sonar-scanner -Dsonar.projectName=Bank -Dsonar.projectKey=Bank "
                }
            }
        }
        
        stage('Build & Test') {
            steps {
                sh 'mvn clean package'
            }
        }
        
    }
}

