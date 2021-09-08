#!/usr/local/bin/ruby -w
# -*- coding: utf-8 -*-

$i = 0
$num = 5

while $i < $num
  puts("在循环语句中 i = #$i")
  $i += 1
end

# while
$i = 0
$num = 5
begin
  puts("在循环语句中 i = #$i")
  $i += 1
end while $i < $num

# until
$i = 0
$num = 5

until $i > $num
  puts("在循环语句中 i = #$i")
  $i += 1
end

# for
for i in 0..5
  puts "局部变量的值为 #{i}"
end

# break
for i in 0..5
  if i > 2
    break
  end
  puts "局部变量的值为 #{i}"
end

# next
for i in 0..5
  if i < 2
    next
  end
  puts "局部变量的值为 #{i}"
end

# redo
for i in 0..5
  if i < 2
    puts "局部变量的值为 #{i}"
    redo
  end
end

# retry
for i in 1..5
  retry if i > 2
  puts "局部变量的值为 #{i}"
end
