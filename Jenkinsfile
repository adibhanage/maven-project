def TUT = 0

pipeline {
    agent any
    triggers {
        //Query repository weekdays every four hours starting at minute 0
        pollSCM('* * * * 1-5')
        }
        stages {
            stage('Build') {
                when { not {TUT = 1} }
        }
        steps {
            echo 'Executing TUT'
        }
    }
}