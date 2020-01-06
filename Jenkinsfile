pipeline
{
  agent
  {
    label 'master_builds'
  }

  stages
  {
        stage ('Slack Notifier')
        {
            steps
            {
                build 'slack-integration-notifier'
            }
        }
        stage ('Checkout code from Git')
        {
            steps
            {
                dir ('depscripts')
                {
                    git branch: 'master', credentialsId: 'jenkins-ci-git-ssh', url: 'git@github.com:esure-dev/ci-db-project.git'
                    echo 'Checkout Deployment Scripts from Git stage done...'
                }
            }
        }
        stage ('SQL Script Runner')
        {
            when { anyOf { branch 'master'; branch 'project-branch'; branch 'development' } }
            steps
            {
              step([$class: 'SQLPlusRunnerBuilder', credentialsId: '49526e25-b68b-40cf-a84e-d412e7f8ee84', customOracleHome: '/usr/lib/oracle/19.3/client64', 
              customSQLPlusHome: '/usr/lib/oracle/19.3/client64/bin/sqlplus', customTNSAdmin: '/usr/lib/oracle/19.3/client64/lib/network/admin', 
              instance: 'DEVC.uk.esure.com', script: 'tut.sql', scriptContent: '', scriptType: 'file'])
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