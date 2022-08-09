pipeline {
    agent any
    stages{
        stage('GIT'){
            steps('Checkout'){
                scripts{
                    checkout([
                        $class: 'GitSCM', 
                        branches: [[name: 'main']], 
                        extensions: [[$class: 'CheckoutOption', timeout: 1]], 
                        //userRemoteConfigs: [[credentialsId: '', url: 'https://github.com/ram-repo/spring-petclinic.git']]
                        userRemoteConfigs: [[url: 'https://github.com/ram-repo/spring-petclinic.git']]
                    ])
                }
            }
        }
    }
}
