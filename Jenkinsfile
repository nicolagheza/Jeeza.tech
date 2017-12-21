pipeline {
    agent {
        dockerfile true
    }
    stages {
        stage('Test') {
            steps {
                sh 'node --version'
            }
        }

        stage('Deploy') {
        	sh docker run -d -p 80:8080 jeeza/vuejs-webapp
        }
    }
}