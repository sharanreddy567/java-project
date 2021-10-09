pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh '''
                    mvn clean package  
                '''
            }
        }
        stage('Build image') {
            steps {
                sh '''
                docker build -t sharan567/java-project:${BUILD_NUMBER} .
                docker push sharan567/java-project:${BUILD_NUMBER} 
                '''
            }
        }
    }
}
