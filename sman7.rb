#!/usr/bin/ruby

#spin manager

teamA = 1, 7, 13, 19
teamB = 2, 8, 14, 20
teamC = 3, 9, 15, 21
teamD = 4, 10, 16, 22
teamE = 5, 11, 17, 23
teamF = 6, 12, 18, 24
teamG = 0

#
#sp1a = 2
#sp1b = 3   1bet x 0.5  +2.5
#sp1c = 4   2bet x 1    +4.5
#sp1d = 5   3bet x 1.5  +6
#sp1e = 6   4bet x 2    +7
#sp1f = 7   5bet x 2.5  +7.5
#sp1g = 6   6bet x 3    +7.5
#           7bet x 4    +9.5
#sp2a = 4   8bet x off
#sp2b = 5
#sp2c = 6
#sp2d = 7
#sp2e = 4
#sp2f = 5
#
#ap3a = 6
#sp3b = 7
#sp3c = 2
#sp3d = 3
#sp3e = 4
#
#sp4a = 1
#sp4b = 1
#sp4c = 2
#sp4d = 3
#
#sp5a = 5
#sp5b = 1
#sp5c = 2
#
#sp6a = 3
#sp6b = 1
#
#sp7b = 7
#

spins = []
bek = true
bet = false
x=true

puts "give previous bet"
bet = gets.chomp
bek = bet.to_i 

9.times do

    if  bek > 24 || bek < 0 then
        puts '0 -- 24'
        puts "give bet"
        bet = gets.chomp
        bek = bet.to_i
        spins << "#{bek}"
        puts "prediction is false"

    elsif teamA.include? (bek) then
        puts "give bet"
        bet = gets.chomp
        bek = bet.to_i 
        spins << "#{bek}"
        puts "prediction is false"

    elsif teamB.include? (bek) then
        puts "give bet"
        bet = gets.chomp
        bek = bet.to_i 
        spins << "#{bek}"
        puts "prediction is false"

    elsif teamC.include? (bek) then
        puts "give bet"
        bet = gets.chomp
        bek = bet.to_i 
        spins << "#{bek}"
        puts "prediction is false"

    elsif teamD.include? (bek) then
        puts "prediction: #{teamA}"
        puts "give bet"
        bet = gets.chomp
        bek = bet.to_i 
        spins << "#{bek}"

    elsif teamE.include? (bek) then
        puts "prediction: #{teamA}"
        puts "give bet"
        bet = gets.chomp
        bek = bet.to_i 
        spins << "#{bek}"

    elsif teamF.include? (bek) then
        puts "prediction: #{teamA}"
        puts "give bet"
        bet = gets.chomp
        bek = bet.to_i 
        spins << "#{bek}"

    elsif bek == 0 then
        puts "give bet"
        bet = gets.chomp
        bek = bet.to_i 
        spins << "#{bek}"
        puts "prediction is false"

    elsif bek == "x" || bek == x then
        puts "exit"
        break
    end

end


puts "------------------------------"
puts "All Spins :", "#{spins}"
puts "------------------------------"

