#!/usr/local/bin/ruby
# -*- coding: utf-8 -*-

def test
  puts "在 test 方法内"
  yield
  puts "你又回到了 test 方法内"
  yield
end

test { puts "你在块内" }

def test
  yield 5
  puts "在 test 方法内"
  yield 100
end

test { |i| puts "你在块 #{i} 内" }

def test(&block)
  block.call
end

test { puts "Hello World!" }

BEGIN {
  # BEGIN 代码块
  puts "BEGIN 代码块"
}

END {
  # END 代码块
  puts "END 代码块"
}
# MAIN 代码块
puts "MAIN 代码块"
