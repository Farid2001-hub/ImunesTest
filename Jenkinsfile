pipeline {
    agent any

    stages {
        stage('Run tests') {
            steps {
                sh '''
                    # Exécute les tests tcltest
                    tclsh -c "package require tcltest;
                    source nodes/pc.tcl;
                    namespace eval tests {
                        # Définit un test qui échoue délibérément
                        proc test_failed {} {
                            set expected \"eth0:2\"
                            set result [pc]
                            tcltest::assert [string equal $result $expected] \"Expected: $expected, but got: $result\"
                        }
                    }
                    tcltest::runTests tests"
                '''
            }
        }
    }
}


    






