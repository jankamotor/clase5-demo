pipeline {
    agent any

    stages {
        stage('Install Dependencies') {
            steps {
                sh 'npm install'
            }
        }

        stage('Unit Test') {
            steps {
                echo 'Ejecutando Unit Test'
            }
        }

        stage('Build Application') {
            steps {
                sh 'npm run build'
            }
        }
      
        stage('Initialize Web Server') {
            steps {
                sh 'service nginx start'
            }
        }
      
        stage('Initialize Web Server') {
            steps {
                sh 'service nginx start'
            }
        }
    }
}
