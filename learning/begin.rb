#!/usr/local/bin/ruby

puts "this is ruby main function"

# as final function area (go defer)
END {
    puts "stop ruby"
}

# as init function area (go init)
BEGIN {
    puts "this is ruby init funcion"
}

# simple comment line

=begin
comment
block
=end