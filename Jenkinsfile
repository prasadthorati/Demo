properties([parameters([choice(choices: ['master'], description: 'Select Branch to Build', name: 'branch')])])

node {
    stage ('checking out'){
        
        git credentialsId: 'git', url: 'https://github.com/prasadthorati/demo.git', branch: "${params.branch}"
    }
    stage ('build using gradle'){
        withGradle{
            
            sh './gradlew clean build'
        }
    }
    stage ('deploy on localhost'){
        ansiblePlaybook credentialsId: 'ansible', installation: 'ansible', inventory: 'hosts', playbook: 'ansibleroles.yml'
    }
     
}
