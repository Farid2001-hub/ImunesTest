pipeline {
    agent any

    stages {
        stage('Run tests') {
            steps {
                sh '''
                    # Exécute les tests tcltest
                    tclsh -c "package require tcltest;
                    namespace eval mon_test {
                        # Définit un test nommé "test_true" qui renvoie toujours "true"
                        proc test_true {} {
                            set x 1
                            set y 1
                            set result [expr {$x == $y}]
                            tcltest::assert $result
                        }
                    }
                    tcltest::runTests mon_test"
                '''
            }
        }
    }
}


    






