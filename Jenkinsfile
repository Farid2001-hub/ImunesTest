pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        checkout([$class: 'GitSCM', branches: [[name: '*/master']], userRemoteConfigs: [[url: 'https://github.com/Farid2001-hub/ImunesTest.git']]])
      }
    }
    
    stages {
        stage('Build') {
            steps {
                sh 'make'
            }
        }

        stage('Test') {
            environment {
                TCLLIBPATH = '/usr/share/tcltk/tcl8.6'
            }

            steps {
                sh 'tclsh nodes/test-pc.tcl'
            }

            post {
                always {
                    junit 'results/**/*.xml'
                }
            }
        }
    }
}
