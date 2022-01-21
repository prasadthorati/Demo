properties([parameters([choice(choices: ['master', 'dev', 'qa'], description: 'Select Branch to Build', name: 'branch')])])

node {
    stage ('git'){
        
        git credentialsId: 'git', url: 'https://github.com/prasadthorati/demo.git', branch: "${params.branch}"
    }
    stage ('build'){
        withGradle{
            sh 'chmod 700 gradlew'
            sh './gradlew build'
        }
    }
}
