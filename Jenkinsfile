pipeline {
    agent any

    stages {
        stage('Install Dependencies') {
            steps {
                sh 'apt-get update'
                sh 'apt-get install -y make tcl tcllib'
            }
        }

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


