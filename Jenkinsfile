pipeline {
  agent any
  
  stages {
    stage('Checkout') {
      steps {
        checkout scm
      }
    }
    stage('Run Tests') {
      steps {
        sh '''
          # Lance les tests avec TclTest
          tclsh ./test_mypc.tcl
          
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

