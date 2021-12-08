pipeline{
agent{label 'main'}
tools{maven 'Backend'}
stages{
stage('Checkout'){
steps{
git branch: 'main', url: 'https://github.com/Tusharsharma225/Multi-Client-Website.git'
}
}
stage('Build'){
steps{
bat 'mvn compile'
}
}
stage('Package'){
steps{
bat 'mvn package'
}
}
stage('Create Image')
{
steps{
bat 'docker build -t image_name:v1 .'
}
}
stage('Create Container')
{
steps{
bat 'docker container create -p 80:80 --name container_name image_name:v1'
}
}
stage('Start Container')
{
steps{
bat 'docker start container_name'
}
}
}
}
