pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'echo "Construire le projet IMUNES Sorbonne"'
            }
        }
        stage('Test') {
            steps {
                sh 'tclsh test_mypc.tcl'
            }
            post {
                always {
                    junit 'test_results.xml'
                }
            }
        }
    }
}
