pipeline {
    agent any
    
    environment {
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
    stage('Deploy to AWS') {
        steps {
             // Pulling the image from Docker Hub

           sh 'docker pull $IMAGE_NAME:$TAG'

           // SSH into the EC2 instance
          sh 'ssh -v -i "/home/prudhvi/Pictures/pemfiles/docker.pem" ubuntu@ec2-44-208-6-196.compute-1.amazonaws.com'

           // Run the image on the EC2 instance
          sh 'docker run  -p 3000:3000 --name jenkins $IMAGE_NAME:$TAG'
         }
    }
    }
}
