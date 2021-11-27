#!/usr/local/bin/ruby

require "socket"

hostname = "localhost"
port = 2002

s = TCPSocket.open(hostname, port)

while line = s.gets
  puts line.chop
end

s.close
