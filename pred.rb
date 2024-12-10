#!/usr/bin/ruby

teamA = [1, 8, 14, 19]
teamB = [2, 9, 15, 20]
teamC = [3, 10, 16, 21]
teamD = [4, 11, 17, 22]
teamE = [5, 12, 18, 23]
teamF = [6, 7, 13, 24]
teamG = [0]

wins = 0
loss = 0
prediction_enabled = false # Flag to control prediction

puts "Welcome!"
puts "Enter 'x' to exit."

while true do


  rand_nums = [teamA, teamB, teamC, teamD, teamE, teamF, teamG]
  suggestion = rand_nums.sample(1)
  puts "#{suggestion.flatten}"

  input = gets.chomp 

  if input == "x"
    break
  elsif !input.to_i.nil?
    if suggestion.flatten.include?(input.to_i)
      wins += 1
      puts "Correct! You win!"
      break
    else
      loss += 1
#      puts "Incorrect. Try again."
    end
  else
    puts "Invalid input. Please enter a number."
  end

  if loss >= 2 && !prediction_enabled
    # Start making predictions after 4 losses
    prediction_enabled = true 
    puts "Prediction is on " 
 
  end
  if loss >= 10 then break end

end

puts "Game Over!"
puts "Wins: #{wins}"
