#!/usr/local/bin/ruby -w

## int

123                  # Fixnum 十进制
1_234                # Fixnum 带有下划线的十进制
-500                 # 负的 Fixnum
0377                 # 八进制
0xff                 # 十六进制
0b1011               # 二进制
"a".ord              # "a" 的字符编码
?\n                  # 换行符（0x0a）的编码
12345678901234567890 # 大数

#整型 Integer 以下是一些整型字面量
#字面量（literal）：代码中能见到的值，数值，bool值，字符串等都叫字面量
#如以下的0,1_000_000,0xa等
a1 = 0

#带千分符的整型
a2 = 1_000_000

#其它进制的表示
a3 = 0xa
puts a1, a2
puts a3

#puts print 都是向控制台打印字符，其中puts带回车换行符
=begin 
这是注释，称作：嵌入式文档注释 
类似C#中的/**/ 
=end

## float

123.4                # 浮点值
1.0e6                # 科学记数法
4E20                 # 不是必需的
4e+20                # 指数前的符号

#浮点型
f1 = 0.0
f2 = 2.1
f3 = 1000000.1
puts f3

## 指数算术
puts 2 ** (1 / 4)
puts 16 ** (1 / 4.0)

## string
puts 'escape using "\\"'
puts 'that\'s right'

## using #{expr}
puts "multiply: #{24 * 60 * 60}"

name = "Ruby"
puts name
puts "#{name + ", ok"}"

## array
ary = ["Fred", 10, 3.14, "the string", "last element"]
ary.each do |i|
  puts i
end

## hash
hsh = colors = { "Red" => 0xf00, "green" => 0x0f0, "blue" => 0x00f }
hsh.each do |key, value|
  print key, " is ", value, "\n"
end

## range
(10..15).each do |n|
  print n, " "
end
