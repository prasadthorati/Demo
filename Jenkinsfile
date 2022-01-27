properties([parameters([choice(choices: ['master'], description: 'Select Branch to Build', name: 'branch')])])

node {
    stage ('checking out'){
        
        git credentialsId: 'git', url: 'https://github.com/prasadthorati/demo.git', branch: "${params.branch}"
    }
    stage ('build with gradle'){
        withGradle{
            sh 'chmod 700 gradlew'
            sh './gradlew clean build'
        }
    }
    stage ('deploy on localhost'){
        ansiblePlaybook credentialsId: 'ansible', installation: 'ansible', inventory: 'hosts', playbook: 'ansibleroles.yml'
    }
     
}
