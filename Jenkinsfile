pipeline {
    agent any

    stages {
        stage('Clone Code') {
            steps {
                git 'https://github.com/Praveen230389/justproject.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build("lugx-site")
                }
            }
        }

        stage('Deploy to EC2') {
            steps {
                script {
                    // Replace IP and credentials accordingly
                    def ec2_ip = "EC2_PUBLIC_IP"
                    def ssh_key = credentials('EC2_SSH_PRIVATE_KEY')

                    sh """
                    ssh -o StrictHostKeyChecking=no -i ${ssh_key} ec2-user@${ec2_ip} '
                      docker stop site || true
                      docker rm site || true
                      docker run -d --name site -p 80:80 lugx-site
                    '
                    """
                }
            }
        }
    }
}
