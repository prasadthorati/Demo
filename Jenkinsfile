properties([parameters([choice(choices: ['master'], description: 'Select Branch to Build', name: 'branch')])])
pipeline {
    agent any
    environment{
        PATH= "${PATH}:/opt/gradle-7.3.3/bin"
   
    }
    stages {
        stage('checking out'){
            steps{
                 git credentialsId: 'git', url: 'https://github.com/prasadthorati/demo.git', branch: "${params.branch}"
            }
        }
        stage('build with gradle'){
            steps{
                sh 'gradle clean build'
            }
        }
        stage('deploy on localhost'){
            steps{
                ansiblePlaybook credentialsId: 'ansible', installation: 'ansible', inventory: 'hosts', playbook: 'ansibleroles.yml'
            }
        }
   
    }
    
}
