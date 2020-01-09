pipeline {
    agent any

    environment {
       // DISABLE_AUTH = 'false'
       // DB_ENGINE    = 'devc'
        GIT_BRANCH   = 't185287'
    }

    stages {
        stage (echo ${GIT_BRANCH})
        {
            steps
            {
                echo  "Git Branch : ${GIT_BRANCH}"
                
                dir ('depscripts')
                {
                    git branch: 'utplsql_demo', credentialsId: 'jenkins-ci-git-ssh', url: 'https://github.com/adibhanage/maven-project.git'
                    echo 'DONE: Checkout Deployment Scripts from Git branch ${GIT_BRANCH}'
                }
            }
        }

        stage('Greetings') {
            steps {
                echo 'Hello, deployment is in progress...'
            }
        }

        stage ('SQL Script Runner') {
                steps
                {
                  step([$class: 'SQLPlusRunnerBuilder', credentialsId: '823ee684-904e-4f9c-83cb-77128f4e1575', instance: 'DEVC.uk.esure.com', script: 'run.sql', scriptContent: '', scriptType: 'file'])
                }
        }
    }
    post {
            success {
                        echo 'Deployment is successful.'
                    }
            failure {
                        echo 'Some Failure'
                    }
            unstable {
                        echo 'Unstable release'
                     }
            changed {
                        echo 'Something has changed'
                        echo 'but its now successful; ready for specific action.'
                    }
        }
}
