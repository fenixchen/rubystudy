#!/usr/bin/ruby -w


$i = 0
$num = 5

while $i < $num  do
   puts("Inside the loop i = #$i" )
   $i +=1
end

$i = 0
$num = 5
begin
   puts("Inside the loop i = #$i" )
   $i +=1
end while $i < $num

until $i > $num  do
   puts("Inside the loop i = #$i" )
   $i +=1;
end

$i = 0
$num = 5
begin
   puts("Inside the loop i = #$i" )
   $i +=1;
end until $i > $num

for i in 0..5
   puts "Value of local variable is #{i}"
end

(0..5).each do |i|
   puts "Value of local variable is #{i}"
end


for i in 0..5
   if i > 2 then
      break
   end
   puts "Value of local variable is #{i}"
end

for i in 0..5
   if i < 2 then
      next
   end
   puts "Value of local variable is #{i}"
end

for i in 0..5
   if i < 2 then
      puts "Value of local variable is #{i}"
      redo
   end
end

for i in 1..5
   #retry if  i > 2
   puts "Value of local variable is #{i}"
end
