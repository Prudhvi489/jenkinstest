pipeline {
    agent any
    
    environment {
        PATH = "${PATH}:/home/prudhvi/.local/bin/eb"
        DOCKER_HUB_USERNAME = 'prudhvisai489'
        DOCKER_HUB_PASSWORD = 'dckr_pat_YINljCcDnG4zisBKDc2K57F-_xs'
        DOCKER_HUB_CREDENTIALS = credentials('jenkins_dockerhub')
        IMAGE_NAME = 'prudhvisai489/data_jenkins'
        TAG = 'latest'
        EB_APP_NAME = 'starting-app' // Replace with your EB application name
        EB_ENV_NAME = 'Starting-app-env' // Replace with your EB environment name
        IAM_ROLE_NAME = 'docker-test1'
        EC2_INSTANCE_PROFILE_NAME = 'arn:aws:iam::416691263379:instance-profile/docker-test1'
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
        //   deploy staged
           //   deploy staged
           stage('Deploy to EC2') {
                  steps {
                    ssh ec2-user@i-04da7dd9b549550d9
                       sh "docker run -itd --rm --name test -p 3000:3000 $IMAGE_NAME:$TAG"
                  }
           }
          
    }
}
