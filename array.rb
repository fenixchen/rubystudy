#!/usr/bin/ruby -w


a = [1,2,3,4,5]
b = a.collect{|x| 10*x}
puts b



if ((1..10) === 5)
  puts "5 lies in (1..10)"
end

if (('a'..'j') === 'c')
  puts "c lies in ('a'..'j')"
end

if (('a'..'j') === 'z')
  puts "z lies in ('a'..'j')"
end

