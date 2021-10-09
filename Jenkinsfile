pipeline {
    agent any
        stage ('Initializing') {
            git url: "https://github.com/sharanreddy567/java-project.git"   
        stage ('Building') {
            steps {
                sh '''
                    cd spring-petclinic
                    mvn clean package  
                '''
               
            }
       
        stage ('Building Image') {
            steps {
            sh '''
                docker build -t sharan567/java-project:${BUILD_NUMBER} .
                docker push sharan567/java-project:${BUILD_NUMBER} 
                '''
            }

        }
        }
}
}
