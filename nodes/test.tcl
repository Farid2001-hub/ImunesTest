# test.tcl
package require tcltest
source "nodes/nouveauPc.tcl"

# Test case
proc test_nouveauPc {} {
    set node [nouveauPc "test_node" "192.168.1.1" "00:11:22:33:44:55" "255.255.255.0"]
    set expected_node_info "test_node 192.168.1.1 00:11:22:33:44:55 255.255.255.0"
    # Assert that the node info matches the expected result
    set msg "Expected: $expected_node_info, but got: $node"
    return [list $msg [string equal $node $expected_node_info]]
}

# Run the test
tcltest::runSuite

