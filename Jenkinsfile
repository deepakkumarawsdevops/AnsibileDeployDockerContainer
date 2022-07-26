pipeline
{
agent {label 'ansible-node'}

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
 sh 'ansible-playbook  ansible-image.yml'
}

}
 stage('Release')
{
 steps
 {
  echo 'releasing'
 }
}
 stage('Deployment')
{
steps
 {
   echo 'deploying...'
 }
}
}

}
