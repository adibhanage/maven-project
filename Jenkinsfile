def ifTUT = 1

pipeline {

agent any
    stages {
        stage('Example') {
            steps {
                if (ifTUT == 1) {
                    echo 'OK'
                } else {
                    echo 'Not OK'
                    }
            }
        }
    }
}