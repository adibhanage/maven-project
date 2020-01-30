def TUT = 0

pipeline {
    agent any
    triggers {
        //Query repository weekdays every four hours starting at minute 0
        pollSCM('* * * * 1-5')
        }
        stages {
            
                script{
                    if (TUT == 1)
                        {
                        echo "TUT OK"
                            stage('Build') {
                                echo "Build"
                            }
                        }
                    else
                        {
                        echo "NOT OK"
                            stage('Build') {
                                    echo "Build"
                                }
                        }
                  }
        }
}