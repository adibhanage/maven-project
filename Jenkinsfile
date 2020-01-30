def ifTUT = 1

pipeline {

agent any
    stages {
        stage('Example') {
                if (ifTUT == 1) {
                    steps
                    {
                      echo 'OK'
                    }
                } else {
                    steps
                    {
                      echo 'Not OK'
                    }
                    }
        }
    }
}