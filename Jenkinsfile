pipeline {
    agent {
        dockerfile true
        docker {
        	args  '-d -p 80:8080'
        }
    }
    stages {
        stage('Test') {
            steps {
                sh 'node --version'
            }
        }

        stage('Deploy') {
        	docker run jeeza/vuejs-webapp
        }
    }
}