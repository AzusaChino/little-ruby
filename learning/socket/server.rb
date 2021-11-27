#!/usr/local/bin/ruby

require "socket"

server = TCPSocket.open(2002)

loop {
  client = server.accept
  client.puts(Time.now.ctime)
  client.puts("Closing the connect, bye!")
  client.close
}