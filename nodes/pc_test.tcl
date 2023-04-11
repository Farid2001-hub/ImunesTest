package require tcltest
source nodes/pc.tcl

# Test cases
namespace eval ::pc::tests {
    # Test case 1
    proc test_addition { } {
        set result [::pc::addition 2 3]
        set expected 5
        tcltest::assertEqual "result" $result $expected
    }
}

# Run the tests
tcltest::runAllTests
