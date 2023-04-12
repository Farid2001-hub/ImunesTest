pipeline {
    agent any

    stages {
        stage('Test') {
            steps {
                sh '''
                    # Charger les modules TCL requis
                    module load tcl

                    # Exécuter le test TCL
                    tclsh nodes/test.tcl
                '''
            }
        }
    }
}






    






