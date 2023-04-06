# Test de la fonction Mypc
package require Tcltest
source pc.tcl

# Test si la fonction Mypc retourne la valeur attendue
proc test_Mypc_return_value {} {
  set expected 5
  set result [Mypc 2 3]
  if {$result != $expected} {
    fail "La fonction Mypc a retourné la valeur $result, attendue $expected"
  }
}

# Test si la fonction Mypc lève une exception avec des arguments non valides
proc test_Mypc_with_invalid_arguments {} {
  set result [catch {Mypc "abc" 5} err]
  if {!$result} {
    fail "La fonction Mypc devrait lever une exception, mais elle n'a pas fait"
  }
  if {![string match "*invalid literal*" $err]} {
    fail "L'exception levée par la fonction Mypc ($err) n'était pas celle attendue"
  }
}

# Exécute les tests
tcltest::runSuite

