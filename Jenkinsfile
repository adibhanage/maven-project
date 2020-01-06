pipeline
{
  agent
  {
    label 'master_builds'
  }

  stages
  {
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
        stage ('SQL Script Runner')
        {
            when { anyOf { branch 'utplsql_demo'; branch 'project-branch'; branch 'development' } }
            steps
            {
              step([$class: 'SQLPlusRunnerBuilder', credentialsId: '823ee684-904e-4f9c-83cb-77128f4e1575', instance: 'DEVC.uk.esure.com', script: 'run.sql', scriptContent: '', scriptType: 'file'])
            }
        }
  }
  post
  {
        always
        {
            junit 'TUTResult.xml'
        }
    }
}