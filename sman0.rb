#!/usr/bin/ruby

wins = 0
loss = 0
puts "Give number"
input = gets.chomp
while input != "x" do

  rand_nums = (0..24).to_a.sample(4)
  suggestion = rand_nums.join(", ")
  puts suggestion
  input = gets.chomp
  if suggestion.include?(input) then 
     wins += 1
    puts "WIN!"
  end
  if suggestion.include?(input) != true then 
     loss += 1
    puts "try aggen!"
  end

end

puts "You won #{wins} times."

puts "You missed #{loss} times."


