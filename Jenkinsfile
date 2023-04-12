pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/Farid2001-hub/ImunesTest.git'
            }
        }
        stage('Run Tests') {
            steps {
                sh '''
                    chmod +x nodes/nouveauPc.tcl
                    bash nodes/nouveauPc.tcl
                    package require tcltest

                    # Définition des tests
                    namespace eval ::tests::nouveauPc {
                        proc test_ajoutPc {} {
                            # Ajouter un PC
                            set node [nouveauPc "PC1" "192.168.1.1"]
                            set node_name [lindex $node 0]
                            set node_ip [lindex $node 1]
                            # Vérifier que le nom et l'adresse IP du PC ont été correctement définis
                            set expected_name "PC1"
                            set expected_ip "192.168.1.1"
                            if {$node_name == $expected_name && $node_ip == $expected_ip} {
                                set result "pass"
                            } else {
                                set result "fail"
                            }
                            tcltest::assert $result "nouveauPc a créé le PC avec les bonnes informations"
                        }
                    }

                    # Exécution des tests
                    tcltest::runSuite ::tests::nouveauPc
                '''
            }
        }
    }
}




    






