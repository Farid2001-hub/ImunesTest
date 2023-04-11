
pipeline {
    agent any

    stages {
        stage('Run tests') {
            steps {
                sh '''
                    # Exécute les tests tcltest
                    tclsh -c "package require tcltest;
                    source nodes/nouveauPc.tcl;
                    namespace eval tests {
                        # Définit un test pour la fonction "nouveauPc"
                        proc test_nouveauPc {} {
                            set expected \"pc1\"
                            set result [nouveauPc]
                            tcltest::assert [string equal $result $expected] \"Expected: $expected, but got: $result\"
                        }
                    }
                    tcltest::runTests tests"
                '''
            }
        }
    }
}


    






