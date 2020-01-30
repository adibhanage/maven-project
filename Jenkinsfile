def ifTUT = 1

pipeline {

agent any
        if (ifTUT == 1) {
    		stages {
                stage('Example') { steps { echo 'OK' } }
		}
	}
        else {
		stages {
            	stage('Example') { steps {echo 'Not OK' } }
        	}
	}
}