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
                        # Définit un test pour la fonction 'pc'
                        proc test_pc {} {
                            set expected \"eth0:1\"
                            set result [pc]
                            tcltest::assert [string equal $result $expected] \"Expected: $expected, but got: $result\"
                        }
                        
                        # Définit un autre test pour la fonction 'pc'
                        proc test_pc_with_args {} {
                            set expected \"eth1:=5\"
                            set result [pc -iface eth1 -num 5]
                            tcltest::assert [string equal $result $expected] \"Expected: $expected, but got: $result\"
                        }
                    }
                    tcltest::runTests tests"
                '''
            }
        }
    }
}



    






