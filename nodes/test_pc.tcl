# Importez le framework de test "tcltest"
package require tcltest

# Importez le fichier de code source contenant la fonction Mypc
source pc.tcl

# Définissez une procédure de test pour la fonction Mypc
proc test_pc {} {
  # Exécutez la fonction Mypc avec des arguments de test
  set result [pc "node" "192.168.1.1" "00:11:22:33:44:55"]
  
  # Vérifiez que la fonction Mypc retourne une valeur attendue
  set expected "Created node: node 192.168.1.1 00:11:22:33:44:55"
  # Utilisez le framework de test pour vérifier que le résultat est correct
  tcltest::assertEqual $result $expected "La fonction pc devrait retourner la bonne valeur"
}

# Appelez la procédure de test pour la fonction pc
test_pc
