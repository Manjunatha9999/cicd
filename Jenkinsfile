node{
    
 stage('CheckoutCode'){
  git branch: 'main', url: 'https://github.com/Manjunatha9999/cicd.git'
 }   
    
 stage('build docker image'){
     
     sh "docker build -t manjunatha99/nginx-demo:v1 ."
 }
 
 stage('login in into docker hub') {
     sh " docker login -u manjunatha99 -p manjunathans@123 "
 }

  stage('push the image to dockerhub'){
  
     sh "docker push manjunatha99/nginx-demo:v1"
  } 
  
  stage('deploy the nginx image'){
      
      
      
      
  }
  
  
  
}
