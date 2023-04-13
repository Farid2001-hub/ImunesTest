pipeline {
    agent any

    stages {
        stage('Test nouveauPc') {
            steps {
                script {
                    // Définition du chemin d'accès au script TCL
                    def scriptPath = './nodes/nouveauPc.tcl'

                    // Exécution du test TCL avec le plugin TCLTest
                    tcltest([
                        testFilePath(pattern: scriptPath),
                        '-verbose', // Affiche les informations détaillées sur les tests exécutés
                        '-load', './nodes/nouveauPc.tcl', // Charge le script à tester
                        '-cleanup', // Effectue un nettoyage avant d'exécuter les tests
                        '-debug', // Active le mode de débogage pour les tests
                        './nodes/test.tcl' // Chemin vers le fichier de test
                    ])
                }
            }
        }
    }
}








    






