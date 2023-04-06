pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                sh 'make all'
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
                    junit 'nodes/test-pc.xml'
                    junit allowEmptyResults: true, testResults: '**/testresults/*.xml'
                }
            }
        }
    }
}




