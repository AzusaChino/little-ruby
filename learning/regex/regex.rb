#!/usr/local/bin/ruby -w

line1 = "Cats are smarter than dogs"
line2 = "Dogs also like meat"

if (line1 =~ /Cats(.*)/)
  puts "Line1 contains Cats"
end
if (line2 =~ /Cats(.*)/)
  puts "Line2 contains Dogs"
end

phone = "138-3453-1111 #这是一个电话号码"

# 删除 Ruby 的注释
phone = phone.sub!(/#.*$/, "")
puts "电话号码 : #{phone}"

# 移除数字以外的其他字符
phone = phone.gsub!(/\D/, "")
puts "电话号码 : #{phone}"

text = "rails 是 rails,  Ruby on Rails 非常好的 Ruby 框架"

# 把所有的 "rails" 改为 "Rails"
text.gsub!("rails", "Rails")

# 把所有的单词 "Rails" 都改成首字母大写
text.gsub!(/\brails\b/, "Rails")

puts "#{text}"
