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
                sh 'ng build'
            }
        }
    }
}
