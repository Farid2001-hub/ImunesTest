pipeline {
    agent any

    stages {
        stage('Run tests') {
            steps {
                sh '''
                    source /etc/profile
                    package require tcltest

                    # Définit un ensemble de tests nommé "mon_test"
                    namespace eval mon_test {
                        # Définit un test nommé "test_true" qui renvoie toujours "true"
                        proc test_true {} {
                            set x 1
                            set y 1
                            set result [expr {$x == $y}]
                            tcltest::assert $result
                        }
                    }

                    # Exécute l'ensemble de tests "mon_test"
                    tcltest::runTests mon_test
                '''
            }
        }
    }
}

    






