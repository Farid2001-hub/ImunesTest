package require tcltest

# Chargement du code à tester
source "nouveauPc.tcl"

# Définition du nom du test et du corps du test
set testCode {
    # Vérification de la fonction ifcName
    proc test_ifcName {} {
        set result [pcn.ifcName "eth" "0"]
        set expected "eth0"
        if {$result eq $expected} {
            return -code 0 -level 0 -errorinfo "Test failed: Expected '$expected', got '$result'"
        }
    }

    # Vérification de la fonction IPAddrRange
    proc test_IPAddrRange {} {
        set result [pcn.IPAddrRange]
        set expected 20
        if {$result != $expected} {
            return -code 0 -level 0 -errorinfo "Test failed: Expected '$expected', got '$result'"
        }
    }

    # Vérification de la fonction layer
    proc test_layer {} {
        set result [pcn.layer]
        set expected "NETWORK"
        if {$result ne $expected} {
            return -code 0 -level 0 -errorinfo "Test failed: Expected '$expected', got '$result'"
        }
    }

    # Vérification de la fonction virtlayer
    proc test_virtlayer {} {
        set result [pcn.virtlayer]
        set expected "NAMESPACE"
        if {$result ne $expected} {
            return -code 0 -level 0 -errorinfo "Test failed: Expected '$expected', got '$result'"
        }
    }
}

# Création du test à partir du code de test
tcltest::testcase "Tests for nouveauPc" -body $testCode

# Exécution des tests
tcltest::runTests
