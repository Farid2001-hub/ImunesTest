pipeline {
  agent any
  
  stages {
    stage('Checkout') {
      steps {
        checkout scm
      }
    }
    
    stage('Install Tcl') {
      steps {
        sh 'echo root | sudo -S apt-get update && sudo -S apt-get install -y tcl tcllib'
      }
    }
    
    stage('Run Tests') {
      steps {
        sh '''
          # Lance les tests avec TclTest
          tclsh test_mypc.tcl
          
          # Enregistre le résultat de tests dans un rapport JUnit
          tclsh tcltest2junit.tcl test_mypc.tcl > results.xml
        '''
      }
      
      post {
        always {
          junit 'results.xml'
        }
      }
    }
  }
}

