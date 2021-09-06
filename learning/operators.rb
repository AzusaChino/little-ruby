#!/usr/local/bin/ruby
# -*- coding: utf-8 -*-

puts 1 + 2 # return 3

# <=> 联合比较运算符。如果第一个操作数等于第二个操作数则返回 0，如果第一个操作数大于第二个操作数则返回 1，如果第一个操作数小于第二个操作数则返回 -1。
puts 1 <=> 2 # return -1

# === 用于测试 case 语句的 when 子句内的相等。
puts (1..10) === 5 # return true

# .eql? 如果接收器和参数具有相同的类型和相等的值，则返回 true。
puts 1 == 1.0 # true
puts 1.eql?(1.0) # false

# equal? 如果接收器和参数具有相同的对象 id，则返回 true。

# 并行赋值
=begin
a, b, c = 10, 20, 30
a, b = b, c
=end

# 范围运算符

puts (1..10) # return 1 => 10
puts (1...10) # return 1 => 9

# defined? 运算符 => 以方法调用的形式来判断传递的表达式是否已定义。它返回表达式的描述字符串，如果表达式未定义则返回 nil。
defined? variable # 如果 variable 已经初始化，则为 True

foo = 42
defined? foo    # => "local-variable"
defined? $_     # => "global-variable"
defined? bar    # => nil（未定义）

defined? method_call # 如果方法已经定义，则为 True

defined? puts        # => "method"
defined? puts(bar)   # => nil（在这里 bar 未定义）
defined? unpack      # => nil（在这里未定义）

# 如果存在可被 super 用户调用的方法，则为 True
defined? super     # => "super"（如果可被调用）
defined? super     # => nil（如果不可被调用）

defined? yield    # => "yield"（如果已传递块）
defined? yield    # => nil（如果未传递块）

# 点运算符 . 双冒号运算符 ::
# 通过在方法名称前加上类或模块名称和 . 来调用类或模块中的方法。你可以使用类或模块名称和两个冒号 :: 来引用类或模块中的常量。
# :: 是一元运算符，允许在类或模块内定义常量、实例方法和类方法，可以从类或模块外的任何地方进行访问。

MR_COUNT = 0        # 定义在主 Object 类上的常量
module Foo
  MR_COUNT = 0
  ::MR_COUNT = 1    # 设置全局计数为 1
  MR_COUNT = 2      # 设置局部计数为 2
end
puts MR_COUNT       # 这是全局常量
puts Foo::MR_COUNT  # 这是 "Foo" 的局部常量

CONST = ' out there'
class Inside_one
   CONST = proc {' in there'}
   def where_is_my_CONST
      ::CONST + ' inside one'
   end
end
class Inside_two
   CONST = ' inside two'
   def where_is_my_CONST
      CONST
   end
end
puts Inside_one.new.where_is_my_CONST
puts Inside_two.new.where_is_my_CONST
puts Object::CONST + Inside_two::CONST
puts Inside_two::CONST + CONST
puts Inside_one::CONST
puts Inside_one::CONST.call + Inside_two::CONST