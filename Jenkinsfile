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
  
      
 withCredentials([sshUserPrivateKey(credentialsId: 'nginx', keyFileVariable: 'pemkey', usernameVariable: 'USERNAME')]) {
    def remote = [:]
    remote.name = 'demoserver'
    remote.host = "13.126.233.119"
    remote.port = 22
    remote.user = "${USERNAME}"
    remote.identityFile = "${pemkey}"
    remote.allowAnyHosts = true

    stage('deploy the nginx image') {
        sshCommand remote: remote, command: "ls -la /home/ubuntu"
         sshCommand remote: remote, command: "docker rm -f nginx_container"
        sshCommand remote: remote, command: "docker run -d -p 80:80 --name nginx_container manjunatha99/nginx-demo:v1"
    }
}

  
}
