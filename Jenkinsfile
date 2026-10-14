pipeline {
    agent any
    tools {
        jdk 'JDK21'
        maven 'Maven3'
    }
    stages {
        stage('Checkout') {
            steps { checkout scm }
        }
        stage('Verify Java and Maven') {
            steps {
                bat 'java -version'
                bat 'mvn -version'
            }
        }
        stage('Build WAR') {
            steps { bat 'mvn -B clean package' }
        }
        stage('Archive WAR') {
            steps { archiveArtifacts artifacts: 'target/*.war', fingerprint: true }
        }
    }
    post {
        success { echo 'WAR build completed. Deployment requires server-specific configuration.' }
    }
}
