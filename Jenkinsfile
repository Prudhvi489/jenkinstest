pipeline {
    agent any
    // agent{
    //     label 'jenkins_connect'
    // }
    
    environment {
        PATH = "${PATH}:/home/prudhvi/.local/bin/eb"
        DOCKER_HUB_USERNAME = 'prudhvisai489'
        DOCKER_HUB_PASSWORD = 'dckr_pat_YINljCcDnG4zisBKDc2K57F-_xs'
        DOCKER_HUB_CREDENTIALS = credentials('jenkins_dockerhub')
        IMAGE_NAME = 'prudhvisai489/data_jenkins'
        TAG = 'latest'
        
    }
    
    stages {
        // stage('Build') {
        //     steps {
        //         script {
        //             sh 'docker build -t $IMAGE_NAME:$TAG .'
        //         }
        //     }
        // }
        //  stage('Login') {
        //    steps {
        //        sh 'docker login -u $DOCKER_HUB_USERNAME -p $DOCKER_HUB_PASSWORD'
        //    }
        //  }
        //  stage('Push') {
        //     steps {
        //          sh 'docker push $IMAGE_NAME'
        //     }
        //   }
        //   deploy staged
        //      deploy staged
        stage('Connecting to EC2') {
            steps {
                script {
                    withCredentials([usernamePassword(credentialsId: 'ec2-instance', username: 'prudhvisai489@gmail.com', password: 'Navya@$1')]) {
                            sh "ssh -i `home/prudhvi/Pictures/pemfiles/docker_server.pem` ubuntu@ec2-15-206-167-200.ap-south-1.compute.amazonaws.com"
                        }
                        }
                   }
        }
        //  stage('Connecting to EC2') {
        //      steps {
        //         script {
        //             def dockerCmd = 'docker run  -p 3000:3000 --name test -it $IMAGE_NAME:$TAG'
        //             sshagent(credentials:['ec2-user']) {
        //                 // credentials->
        //                 // echo "${credentials}"
        //                 sh "ssh -o StrictHostKeyChecking=no ec2-user@15.206.167.200 ${dockerCmd}"
        //             }
        //         }
        //       }
          
        //  }
}
}