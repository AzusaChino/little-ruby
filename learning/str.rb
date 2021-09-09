#!/usr/local/bin/ruby

name1 = "Joe"
name2 = "Mary"
puts "你好 #{name1},  #{name2} 在哪?"

x, y, z = 12, 36, 72
puts "x 的值为 #{x}"
puts "x + y 的值为 #{x + y}"
puts "x + y + z 的平均值为 #{(x + y + z) / 3}"

myStr = String.new("THIS IS TEST")
foo = myStr.downcase

puts "#{foo}"


"abc \0\0abc \0\0".unpack('A6Z6')   #=> ["abc", "abc "]
"abc \0\0".unpack('a3a3')           #=> ["abc", " \000\000"]
"abc \0abc \0".unpack('Z*Z*')       #=> ["abc ", "abc "]
"aa".unpack('b8B8')                 #=> ["10000110", "01100001"]
"aaa".unpack('h2H2c')               #=> ["16", "61", 97]
"\xfe\xff\xfe\xff".unpack('sS')     #=> [-2, 65534]
"now=20is".unpack('M*')             #=> ["now is"]
"whole".unpack('xax2aX2aX1aX2a')    #=> ["h", "e", "l", "l", "o"]
