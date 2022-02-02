properties([parameters([gitParameter(branch: 'master', branchFilter: '.*', defaultValue: 'master', description: 'Select Branch to Build', name: 'Branch', quickFilterEnabled: false, selectedValue: 'DEFAULT', sortMode: 'NONE', tagFilter: '*', type: 'GitParameterDefinition', useRepository: 'https://github.com/prasadthorati/demo.git')])])
pipeline {
    agent any
    environment{
        PATH= "${PATH}:/opt/gradle-7.3.3/bin"
   
    }
    stages {
        stage('checking out'){
            steps{
                 git credentialsId: 'git', url: 'https://github.com/prasadthorati/demo.git'
                //echo "git clone"
            }
        }
        stage('build with gradle'){
            steps{
                sh 'gradle clean build'
                //echo "building"
            }
        }
        stage('deploy on localhost'){
            steps{
                ansiblePlaybook credentialsId: 'ansible', installation: 'ansible', inventory: 'hosts', playbook: 'ansibleroles.yml'
                //echo "deploying"
            }
        }
   
    }
    
}
