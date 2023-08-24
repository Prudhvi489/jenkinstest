pipeline {
    agent any
    
    environment {
        DOCKER_HUB_CREDENTIALS = credentials('jenkins_dockerhub')
        IMAGE_NAME = 'prudhvisai489/first_jenkins'
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
        
        stage('Push') {
            steps {
                script {
                    // withCredentials([string(credentialsId: "$DOCKER_HUB_CREDENTIALS", variable: "DOCKER_HUB_CREDENTIALS")]) 
                     withDockerRegistry([credentialsId: 'jenkins_dockerhub', url: ''])
                    
                     {
                        sh "docker login -u prudhvisai489 -p $DOCKER_HUB_CREDENTIALS"
                        sh "docker push $IMAGE_NAME:$TAG"
                    }
                }
            }
        }
    }
}
