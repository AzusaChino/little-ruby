# Ruby Samples

## grammar

构建一个 here document 最通用的语法是 << 紧跟一个标识符，从下一行开始是想要引用的文字，然后再在单独的一行用相同的标识符关闭。

```ruby
puts <<EOF
first line
second line
EOF
```
