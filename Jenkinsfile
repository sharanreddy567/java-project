pipeline {
    agent any
    stages {
        stage('Clone') {
            steps {
            git url: 'https://github.com/sharanreddy567/java-project.git'
            }
        }
        stage('Build') {
            steps {
                sh '''
                    cd spring-petclinic
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
