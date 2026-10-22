pipeline {
    agent any
    stages{
        stage('Run npm install command'){
            steps{
                sh 'npm install'
            }
        }
        stage('Run npm lint command'){
            steps{
                sh 'npm run lint'
            }
        }
        stage('Run npm test'){
            steps{
                sh 'npm test'
            }
        }
    }
}