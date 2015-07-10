#!/usr/bin/ruby -w

puts "Hello, Ruby!";

print <<EOF
    This is the first way of creating
    here document ie. multiple line string.
EOF


BEGIN {
   puts "Initializing Ruby Program"
}

END {
   puts "Terminating Ruby Program"
}
#comment

=begin
这是注释。
这也是注释。
这也是注释。
这还是注释。
=end

puts 'escape using "\\"';
puts 'That\'s right';

puts "Multiplication Value : #{24*60*60}";

ary = [  "fred", 10, 3.14, "This is a string", "last element", ]
ary.each do |i|
   puts i
end


hsh = colors = { "red" => 0xf00, "green" => 0x0f0, "blue" => 0x00f }
hsh.each do |key, value|
   print key, " is ", value, "\n"
end


(10..15).each do |n| 
   print n, ' ' 
end
puts


