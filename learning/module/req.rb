#!/usr/local/bin/ruby -w

$LOAD_PATH << "."

require "trig.rb"
require "moral"

y = Trig.sin(Trig::PI / 4)
wrong = Moral.sin(Moral::VERY_BAD)
