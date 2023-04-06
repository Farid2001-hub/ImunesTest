
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
                sh 'make'
            }
        }
        
        stage('Run Tests') {
            steps {
                sh 'imunes testbed.xml'
                sh 'tclsh nodes/test_mypc.tcl'
            }
        }
    }
}


