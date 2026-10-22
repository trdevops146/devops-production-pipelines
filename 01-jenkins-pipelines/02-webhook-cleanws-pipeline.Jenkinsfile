pipeline {
    agent any
    stages{
        stage('Run a random test'){
            steps{
                sh 'mvn package'
            }
        }
    }
    post{
        always{
            cleanWS()
        }
    }
}