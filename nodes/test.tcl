package require tcltest

# Chargement du script à tester
source "./nodes/nouveauPc.tcl"

# Définition du nom du test
set testName "Test de la fonction nouveauPc"

# Définition du scénario de test
proc test_${testName} {} {
    # Test de la fonction nouveauPc
    set result [nouveauPc]

    # Assertion de la valeur de retour
    set expected "nouveauPc.tcl executed successfully"
    set message "La valeur retournée est incorrecte"
    tcltest::assertEqual $expected $result $message
}

# Exécution des tests
tcltest::runTests $testName

