pipeline {
    agent any
    
    environment {
        DOCKER_HUB_USERNAME = 'prudhvisai489'
        DOCKER_HUB_PASSWORD = 'dckr_pat_YINljCcDnG4zisBKDc2K57F-_xs'
        DOCKER_HUB_CREDENTIALS = credentials('jenkins_dockerhub')
        IMAGE_NAME = 'prudhvisai489/second_jenkins'
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
        // stage('Push') {
        //     steps {
        //         script {
        //             // withCredentials([string(credentialsId: "$DOCKER_HUB_CREDENTIALS", variable: "DOCKER_HUB_CREDENTIALS")]) 
        //              withDockerRegistry([credentialsId: "jenkins_dockerhub", url: ''])
                    
        //              {
        //                 // sh "docker login -u prudhvisai489 -p $DOCKER_HUB_CREDENTIALS"
        //                 sh "docker push $IMAGE_NAME:$TAG"
        //             }
        //         }
        //     }
        // }
    }
}
