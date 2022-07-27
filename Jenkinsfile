pipeline
{
agent {label 'ansible-node'}
environment
{
DOCKERHUB_CREDENTIALS = credentials('docker-hub-login')


}
stages

 {

 stage('Build using maven')
 {
  steps
  {
   echo 'building'
   sh 'mvn package'
   sh 'mvn install'


  }
}
stage('Docker build using ansible')
{

steps
{
 sh 'ansible-playbook ansible-image.yml'
}

}
stage('login to dcoker hub')

{
steps
{
  sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
}

}
 stage('Release to DockerHub')
{
 steps
 {
  echo 'releasing'
  sh 'docker push deepakkumarawsdevops/ansibledockerimage:01'
 }
}
 stage('Deployment')
{
steps
 {
   echo 'deploying...'
   sh 'ansible-playbook ansible-deployment.yml'
 }
}
}

}
