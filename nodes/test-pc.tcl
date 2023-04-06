lappend auto_path $env(TCLLIBPATH)
package require Tcltest
source ../pc.tcl

# Test case 1
test pc_with_small_mask {
    set ip "192.168.1.1"
    set mask "255.255.255.0"
    set expected_output "192.168.1.0/24"

    set output [pc $ip $mask]

    set msg "Unexpected output for $ip and $mask"
    failUnless {$output eq $expected_output} $msg
}

# Test case 2
test pc_with_large_mask {
    set ip "10.0.0.1"
    set mask "255.255.0.0"
    set expected_output "10.0.0.0/16"

    set output [pc $ip $mask]

    set msg "Unexpected output for $ip and $mask"
    failUnless {$output eq $expected_output} $msg
}

# Test case 3
test pc_with_single_ip {
    set ip "192.168.1.1"
    set mask "255.255.255.255"
    set expected_output "$ip/32"

    set output [pc $ip $mask]

    set msg "Unexpected output for $ip and $mask"
    failUnless {$output eq $expected_output} $msg
}

# Run all tests
tcltest::run-all


