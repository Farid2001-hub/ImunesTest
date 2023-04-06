pipeline {
    agent any

    environment {
        TCLLIBPATH = '/usr/share/tcltk/tcl8.6 /usr/lib/tcltk/tcl8.6'
    }

    stages {
        stage('Build') {
            steps {
                sh 'make'
            }
        }

        stage('Test') {
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



