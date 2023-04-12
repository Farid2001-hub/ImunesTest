#!/usr/bin/env tclsh

# Charger le module Imunes
package require Imunes

# Charger le module du noeud PC
package require Pc

# Charger le module de simulation de réseau NS-2
package require ns

# Charger le fichier de définition de la fonction nouveauPc
source nodes/nouveauPc.tcl

# Créer un noeud PC
set pc1 [nouveauPc "pc1"]

# Tester si le noeud PC a été créé avec succès
if {[info exists pc1] && $pc1 != ""} {
    puts "Test succeeded: nouveauPc"
    exit 0
} else {
    puts "Test failed: nouveauPc"
    exit 1
}
