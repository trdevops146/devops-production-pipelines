pipeline {
    agent any
    NPM_CONFIG_CACHE = ${WORKSPACE}/.npm-cache
    stages{
        stage('Checkout the code'){
            steps{
                git 'https://github.com/trdevops146/devops-production-pipelines.git'
            }
        }
        stage('Run npm install command'){
            steps{
                sh 'npm ci --prefer-offline'
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