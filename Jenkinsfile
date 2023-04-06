pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        checkout([$class: 'GitSCM', branches: [[name: '*/master']], userRemoteConfigs: [[url: 'https://github.com/Farid2001-hub/ImunesTest.git']]])
      }
    }
    stage('Build') {
      steps {
        sh 'make'
      }
    }
    
    environment {
    TCLLIBPATH = '/usr/share/tcltk/tcl8.6'
      }

    stage('Test') {
      steps {
        sh 'tclsh nodes/test-pc.tcl'
      }
      post {
        always {
          junit 'reports/**/*.xml'
        }
      }
    }
  }
}



