# Proper module documentation
# goes here
class hieratest::do {

  $myhieralookup = "thing::ip-10-128-105-230"
#  $myhieralookup = "thing::${::hostname}"
  $myvalue = hiera($myhieralookup, FAILED)

  notify { "${myhieralookup} <-- hostname": }
  notify { "${myvalue} <--- value pulled from hiera eyaml based on hostname": }

}

