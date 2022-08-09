pipeline {
    agent any
/*  ##### Maven sTage ####### */
    stages {
        stage('Build Maven') {
            steps('mvn commands') {
                scripts {
                    sh "mvn clean package"
                }
            }
        }
    }
}
