pipeline {
    agent none

    stages {
        
        stage(' Creating Node Container and Installing Dependencies....') {
            agent { 
               dockerfile {
                  args '--mount type=volume,src=deploy_app,dst=/tmp -u 0:0'
            }
        } 
            steps {
                sh 'npm install'
            }
        }

        stage('Executing Unit Test...') {
            
            steps {
                echo 'Ejecutando Unit Test'
            }
        }

         stage('Executing Sonar Scanner...') {
             steps {
                 //sh 'npm run sonar'
                   echo 'Ejecutando Unit Test'
             }
         }
      
        stage('Building Application...') {
            agent { 
               dockerfile {
                 args '--mount type=volume,src=deploy_app,dst=/tmp -u 0:0'
            }
        } 
            steps {
                sh 'npm run build'
            }
        }
      
        stage('Copying artifacts... ') {
            agent { 
               dockerfile {
                 args '--mount type=volume,src=deploy_app,dst=/tmp -u 0:0'
            }
        } 
            steps {
                sh 'cp dist/clase5-demo/* /tmp/'
            }
        }
        stage('Deploying Application...') {
            agent {
                label 'docker_host'
            }
            steps {
                dir ('/home/administrator/proyects/angular_ci-cd') {
                sh 'docker-compose build'
                sh 'docker-compose up -d --no-color --wait'
                sh 'docker-compose ps'
                
               }
            }
        }
    }
}
