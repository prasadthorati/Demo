node {
    stage ('git'){
        git credentialsId: 'git', url: 'https://github.com/prasadthorati/demo.git'
    }
    stage ('build'){
        withGradle{
            sh 'chmod 777 gradlew'
            sh './gradlew build'
        }
    }
}
