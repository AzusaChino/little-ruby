#!/usr/local/bin/ruby -w

class Box
  def initialize(w, h)
    @width, @height = w, h
  end

  def print_width
    @width
  end

  def print_height
    @height
  end

end

box = Box.new(10, 20)
x = box.print_width
y = box.print_height

puts "width : #{x}"
puts "height : #{y}"
