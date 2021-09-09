#!/usr/local/bin/ruby -w

# sysread
aFile = File.new("txt.txt", "r")
if aFile
  content = aFile.sysread(20)
  puts content
else
  puts "cannot find the file!"
end

# syswrite
aFile = File.new("txt.txt", "r+")
if aFile
  aFile.syswrite("ABCDEF")
else
  puts "cannot find the file!"
end

# each_byte
aFile = File.new("input.txt", "r+")
if aFile
  aFile.syswrite("ABCDEF")
  aFile.rewind
  aFile.each_byte { |ch| putc ch; putc ?. }
else
  puts "Unable to open file!"
end

# readlines
arr = IO.readlines("input.txt")
puts arr[0]
puts arr[1]

## rename delete
File.rename("test1.txt", "test2.txt")
File.delete("text2.txt")

# file mode & owner
file = File.new("text.txt", "w")
file.chmod(0755)

# open exists
File.open("file.rb") if File::exists?("file.rb")
# whether is a file
File.file?("text.txt")
# whether is a dir
File::directory?("/usr/local/bin") # => true

File.readable?("test.txt")   # => true
File.writable?("test.txt")   # => true
File.executable?("test.txt") # => false
File.size?("text.txt")     # => 1002
File::ftype("test.txt")     # => file
File::ctime("test.txt") # => Fri May 09 10:06:37 -0700 2008
File::mtime("text.txt") # => Fri May 09 10:44:44 -0700 2008
File::atime("text.txt") # => Fri May 09 10:45:01 -0700 2008

# Dir
Dir.chdir("/usr/bin")
puts Dir.pwd # 返回当前目录，类似 /usr/bin
puts Dir.entries("/usr/bin").join(" ")
Dir.foreach("/usr/bin") do |entry|
  puts entry
end
Dir["/usr/bin/*"]
Dir.mkdir("mynewdir", 755)

require "tmpdir"
tempfilename = File.join(Dir.tmpdir, "tingtong")
tempfile = File.new(tempfilename, "w")
tempfile.puts "This is a temporary file"
tempfile.close
File.delete(tempfilename)

require "tempfile"
f = Tempfile.new("tingtong")
f.puts "Hello"
puts f.path
f.close
