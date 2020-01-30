def ifTUT = 1

pipeline {

agent any
    stages {
        if (ifTUT == 1) {
            stage('Example') { steps { echo 'OK' } }
        }
        else {
            stage('Example') { steps {echo 'Not OK' } }
        }
    }
}