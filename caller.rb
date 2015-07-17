#!/usr/bin/ruby -w

def a
    puts "a"
    stack=caller
    puts stack
end


def b
    puts "b"
    a
end

b

