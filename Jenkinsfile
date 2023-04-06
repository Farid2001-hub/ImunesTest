pipeline {
    agent any

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


