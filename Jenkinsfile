pipeline {
    agent any

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

