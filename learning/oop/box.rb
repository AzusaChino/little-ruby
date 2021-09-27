#!/usr/local/bin/ruby -w

# 定义类
class Box
  # class const
  BOX_COMPANY = "TATA INC"
  BOX_WEIGHT = 10
  # class param
  @@count = 0
  # 构造器方法
  def initialize(w, h)
    # instance param
    @width, @height = w, h
    @@count += 1
  end

  # 访问器方法
  def get_width
    @width
  end

  def get_height
    @height
  end

  # 设置器方法
  def set_width=(value)
    @width = value
  end

  def set_height=(value)
    @height = value
  end

  def get_area
    @width * @height
  end

  # print class initailzied count
  def self.print_count()
    puts "Box count is : #@@count"
  end

  # tostring in ruby
  def to_s
    "(w:#@width,h:#@height)"
  end

  def print_area
    @area = get_width() * get_height()
    puts "Big box data is: #@area"
  end

  private :get_width, :get_height
  protected :print_area

  # override opeartors
  def +(other) # 定义 + 来执行向量加法
    Box.new(@width + other.width, @height + other.height)
  end

  def -@ # 定义一元运算符 - 来对 width 和 height 求反
    Box.new(-@width, -@height)
  end

  def *(scalar) # 执行标量乘法
    Box.new(@width * scalar, @height * scalar)
  end
end

# 创建对象
box = Box.new(10, 20)
b_box = Box.allocate # 未初始化
# freeze current obj to make is a const
# box.freeze

# 使用设置器方法
box.set_width = 30
box.set_height = 50

# 使用访问器方法
x = box.get_width()
y = box.get_height()

puts "盒子宽度 : #{x}"
puts "盒子高度 : #{y}"
puts "after call toString: #{box}"

# extends
class BigBox < Box
  def print_big
    @area = @width * @height
    puts "Big box data is: #@area"
  end
end
