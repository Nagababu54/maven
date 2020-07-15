node('master')
{
    stage('continous download')
    {
        git 'https://github.com/Nagababu54/maven.git'
    }
    stage('continous build')
    {
        sh label: '', script: 'mvn package'
    }
    stage('continous deployment')
    {
       sh label: '', script: 'scp /home/ubuntu/.jenkins/workspace/scripted_pipeline/webapp/target/webapp.war  ubuntu@172.31.46.94:/var/lib/tomcat8/webapps/a1.war'
    }
    stage('continous testing')
    {
        git 'https://github.com/selenium-saikrishna/FunctionalTesting.git'
        sh label: '', script: 'java -jar /home/ubuntu/.jenkins/workspace/scripted_pipeline/testing.jar'
    }
    stage('continous deployment')
    {
       sh label: '', script: 'scp /home/ubuntu/.jenkins/workspace/scripted_pipeline/webapp/target/webapp.war  ubuntu@172.31.47.97:/var/lib/tomcat8/webapps/b1.war'
    }
}
