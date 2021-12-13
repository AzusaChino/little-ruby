#!/usr/local/bin/ruby -w

require 'json'

puts "Hello, Ruby!"

f = File.read('tmp.json')
j = JSON.parse(f)

puts j

my_hello = lambda { puts "Hello" }
my_hello.call
my_hello.()
my_hello.[]
my_hello.===

def abc
  my_lam = -> {puts "Hello" }
  my_lam_with_args = lambda (v) { puts "Hello" + v}

  my_lam.call
  my_lam_with_args.call("newman")

  my_lam_with_default = lambda {|name="Jerry"| puts "Hello" + name}

  my_lam_multiple_line = lambda do
    puts "hello"
    puts "world"
  end
end