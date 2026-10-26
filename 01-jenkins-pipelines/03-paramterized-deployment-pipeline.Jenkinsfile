pipeline{
    agent any
    parameters {
        choice choices: ['dev', 'stage', 'prod'], name: 'Please select the environment on which you want to execute the pipeline'
        }
    stages{
        stage('Deployment for non prod stage'){
            when{
                expression{
                    params.choice != "prod" 
                }
            }
            steps{
                sh 'deploy command'
            }
        }
        stage('Deployment for prod stage'){
            when{
                expression{
                    params.choice == "prod" 
                }
            }
            steps{
            script{
                input 'Conitnue to deploy'
                sh 'deploy command'
            }
        }
        }
    }
}