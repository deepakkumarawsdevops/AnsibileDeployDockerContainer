pipeline
{
agent {label 'ansible-node'}

stages

 {

 stage('Build')
 {
  steps
  {
   echo 'building'
   sh 'mvn package'
   sh 'mvn install'
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
