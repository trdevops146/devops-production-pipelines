# devops-production-pipelines
This repo contains producation grade optimized pipelines.
Jenkinsfile
Jenkinsfile01 - This declarative pipeline is doing build cache for Node js related application and performing dependency cache and also runnig the npm lint and npm test command, the npm ci --prefer-offline command is used to access the dependency cache instead of downloading the dependency everytime from internet.
Jenkinsfile02 - This declarative pipeline is covering the concept of webhook trigger on a push event and also cleaning up the workspace after the completion of pipeline job
