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
        //   deploy staged
           //   deploy staged
        //  stage('Connecting to EC2') {
        //     steps {
        //         script {
        //             // Add EC2 instance to known hosts
        //             // sh "ssh-keyscan $EC2_INSTANCE_IP >> ~/.ssh/known_hosts"
        //             sh "ssh -v -i /home/prudhvi/Pictures/pemfiles/docker_server.pem ubuntu@ec2-15-206-167-200.ap-south-1.compute.amazonaws.com docker pull $IMAGE_NAME:$TAG"
        //             // Execute remote commands on EC2 instance
        //             // sh "ssh -i $SSH_KEY_PATH ec2-user@$EC2_INSTANCE_IP 'echo Hello from EC2'"
        //             // sh "ssh -i $SSH_KEY_PATH ec2-user@$EC2_INSTANCE_IP 'cd /path/to/app && ./deploy.sh'"
        //             // Add more remote commands as needed
        //         }
        //     }
        // }
          
    }
}
