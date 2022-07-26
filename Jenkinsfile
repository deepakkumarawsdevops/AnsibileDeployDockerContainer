pipeline
{
agent any

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
