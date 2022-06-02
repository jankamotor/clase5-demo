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

        stage('Remove template file') {
            steps {
                sh 'rm /var/www/html/index.nginx-debian.html'
            }
        }

        stage('Deploy Application') {
            steps {
                sh 'cp dist/clase5-demo/* /var/www/html/'
            }
        }
    }
}
