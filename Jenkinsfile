node('master'){
    env.PATH = "/opt/maven3/bin/:$PATH"
      def os = System.properties['os.name'].toLowerCase()
      echo "OS: ${os}"
    stage('Git Clone/Pull'){
        git branch: 'master', 
        url: 'https://github.com/benjamaa-soufiene/theme-park-ride'
    }
   stage('Build'){
        if (os.contains("linux")) {
          sh "mvn clean install" 
        } else {
          bat "mvn clean install"
        }
   }
  stage('Build Docker Image'){
        if (os.contains("linux")) {
           sh 'docker build -t theme-park-ride.git:1.0.0 .'
        } else {
          bat 'docker build -t theme-park-ride.git:1.0.0 .'
        }
  }
 stage('Deploy'){
       if (os.contains("linux")) {
           sh 'docker run -d  -p 8081:8081 theme-park-ride.git:1.0.0 .'
        } else {
         sh 'docker run -d  -p 8081:8081 theme-park-ride.git:1.0.0 .'
        }  
  } 
}
 
