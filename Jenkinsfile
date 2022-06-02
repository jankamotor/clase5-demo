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

        stage('Sonar Scanner') {
            steps {
                sh 'npm run sonar'
            }
        }

        stage('Build Application') {
            steps {
                sh 'npm run build'
            }
        }
      
        stage('Deploy Application') {
            steps {
                sh 'cp dist/clase5-demo/* /var/www/html/'
            }
        }
    }
}