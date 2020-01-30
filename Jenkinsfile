def ifTUT = 'Y'

pipeline {

agent any
    stages {
        stage('Example') {
        if (ifTUT == 'Y') {
            echo 'OK'
        } else {
            echo 'Not OK'
        }
    }
    }
}