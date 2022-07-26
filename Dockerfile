pipelines
{
ageny any

stages

 {

 stage('Build')
 {
  steps
  { 
   echo 'building'
   sh 'mvn release'
   sh 'mvn install'
  } 

 stage('Release')

 steps
 {
  echo 'releasing'
 }

 stage('Deployment')

 {
   echo 'deploying...'
 }

 }

