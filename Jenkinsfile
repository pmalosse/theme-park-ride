node('master'){
    env.PATH = "/opt/maven3/bin/:$PATH"
    
    stage('Git Clone/Pull'){
        git branch: 'master', 
        url: 'https://github.com/benjamaa-soufiene/theme-park-ride'
    }
   stage('Build'){
          sh "mvn clean install"
   }
} stage('Build Docker Image'){
     sh 'docker build -t theme-park-ride.git:1.0.0 .'

 stage('Deploy'){
     sh 'docker run -d  -p 8081:8081 theme-park-ride.git:1.0.0 .'
  } 
}
 
