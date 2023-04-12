pipeline {
    agent any
    stages {
        stage('Test nouveauPc.tcl') {
            steps {
                sh '''
                    chmod +x nodes/nouveauPc.tcl
                    RESULT=$(echo 'package require ns; source nodes/nouveauPc.tcl; nouveauPc pc1' | ns)
                    if [[ $RESULT =~ "Error" ]]; then
                        echo "Test failed: $RESULT"
                        exit 1
                    else
                        echo "Test succeeded: $RESULT"
                    fi
                '''
            }
        }
    }
}





    






