pipeline {
    agent any
    
    environment {
        PATH = "${PATH}:/home/prudhvi/.local/bin/eb"
        DOCKER_HUB_USERNAME = 'prudhvisai489'
        DOCKER_HUB_PASSWORD = 'dckr_pat_YINljCcDnG4zisBKDc2K57F-_xs'
        DOCKER_HUB_CREDENTIALS = credentials('jenkins_dockerhub')
        IMAGE_NAME = 'prudhvisai489/data_jenkins'
        TAG = 'latest'
    }
    
    stages {
        stage('Build') {
            steps {
                script {
                    sh 'docker build -t $IMAGE_NAME:$TAG .'
                }
            }
        }
         stage('Login') {
           steps {
               sh 'docker login -u $DOCKER_HUB_USERNAME -p $DOCKER_HUB_PASSWORD'
           }
         }
         stage('Push') {
            steps {
                 sh 'docker push $IMAGE_NAME'
            }
          }
        //   deploy stages
           stage('Deploy to Elastic Beanstalk') {
                  steps {
                      sh 'eb deploy'
                  }
           }
          
    }
}
