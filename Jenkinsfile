pipeline {
  
    agent {
        label 'docker_host'
            }

    stages {
        
        stage(' Creating Node Container and Installing Dependencies....') {
             
            steps {
                echo 'Ejecutando Unit Test'
                dir ('/home/administrator/proyects/node') {
                sh 'docker-compose build'
                sh 'docker-compose up -d --no-color --wait'
                sh 'docker-compose ps'
                sh 'npm install'
              }
                
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
            
         
            steps {
                sh 'npm run build'
            }
        }
      
        stage('Copying artifacts... ') {
            
         
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
