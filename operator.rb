#!/usr/bin/ruby -w

a, b, c = 10, 20, 30

(1..10).each do |i|
printf "%d\t", i
end
puts
(1...10).each do |i|
printf "%d\t", i
end
puts

foo = 42
puts defined? foo    # => "local-variable"
puts defined? $_    # => "local-variable"
puts defined? nil 
puts defined? puts 
puts defined? yield 


MR_COUNT = 0        # 定义在主 Object 类上的常量
module Foo
  MR_COUNT = 0
  ::MR_COUNT = 1    # 设置全局计数为 1
  MR_COUNT = 2      # 设置局部计数为 2
end
puts MR_COUNT       # 这是全局常量
puts Foo::MR_COUNT  # 这是 "Foo" 的局部常量 
