pipeline {
    agent any 
    stages {
        stage ('Checkout code from Git')
        {
            steps
            {
                dir ('depscripts')
                {
                    git branch: 'utplsql_demo', credentialsId: 'jenkins-ci-git-ssh', url: 'https://github.com/adibhanage/maven-project.git'
                    echo 'Checkout Deployment Scripts from Git stage done...'
                }
            }
        }
        
        stage('Greetings') {
            steps {
                echo 'Hello world!' 
            }
        }
    }
}