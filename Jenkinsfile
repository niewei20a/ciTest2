pipeline {
  agent {
    docker {
      image 'maven:3-alpine'
      args '-v /root/.m2:/root/.m2'
    }

  }
  stages {
    stage('package') {
      steps {
        sh 'mvn clean package -DskipTests -U'
      }
    }

    stage('docker-build') {
      steps {
        sh 'docker build -t niewei/ciTest'
      }
    }

  }
}