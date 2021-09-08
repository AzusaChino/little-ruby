#!/usr/local/bin/ruby -w
# -*- coding: utf-8 -*-

x = 1
if x > 2
  puts "x is bigger than 2"
elsif x <= 2 and x != 0
  puts "x is 1"
else
  puts "we don't know what is x"
end

# code if condition
$debug = 1
print "debug\n" if $debug

# unless
a = 1
unless a > 2
  puts "x is smaller than 2"
else
  puts "x is bigger than 2"
end

$var = 1
print "1 -- 这一行输出\n" if $var
print "2 -- 这一行不输出\n" unless $var

$var = false
print "3 -- 这一行输出\n" unless $var

# case when
$age = 5
case $age
when 0..2
  puts "婴儿"
when 3..6
  puts "小孩"
when 7..12
  puts "child"
when 13..18
  puts "少年"
else
  puts "其他年龄段的"
end
