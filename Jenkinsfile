pipeline {
    agent any

    environment {
        Docker_Image = 'my-simple-app:1.2'  // Ensure the value is in quotes
    }

    stages {  // Correctly use lowercase 'stages'
        stage('Clone the directory in Jenkins') {
            steps {
                git credentialsId: '57a1eb60-d717-4aa4-808f-95ccacd58ee6', url: 'https://github.com/Nourabe8/Welcom'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t my-simple-app:1.2 .'
                }
            }
        }

        stage('Run Docker Image') {
            steps {
                script {
                    sh 'docker run -d -p 8084:80 $Docker_Image'
                }
            }
        }
    }

    post {
        always {
            echo 'My First Jenkins Pipeline done!'
        }
    }
}

