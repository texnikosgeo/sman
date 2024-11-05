#!/usr/bin/ruby

#spin manager

teamA = 1, 7, 13, 19
teamB = 2, 8, 14, 20
teamC = 3, 9, 15, 21
teamD = 4, 10, 16, 22
teamE = 5, 11, 17, 23
teamF = 6, 12, 18, 24
teamG = 0,

spins = []
f_step = []
s_step = []

predict = true
bek = true
bet = false
x = true

puts "give previous bet"
bet = gets.chomp
bek = bet.to_i 

while bet != "x"

puts "give bet"
bet = gets.chomp
bek = bet.to_i
spins << "#{bek}"

puts "------------------------------"
puts "Prediction is :", "#{s_step.pop}"
puts "------------------------------"

    if  bek > 24 || bek < 0 then puts '0--24'
        
    elsif teamA.include?(bek) then f_step << 1
    elsif f_step[-2..] == [4, 4] || f_step[-2..] == [4, 5]  || f_step[-2..] == [5, 4] || f_step[-2..] == [5, 6] || f_step[-2..] == [6, 5] || f_step[-2..] == [6, 7] || f_step[-2..] == [7, 6] then s_step << teamA

    elsif teamB.include?(bek) then f_step << 2
    elsif f_step[-2..] == [1, 1] || f_step[-2..] == [3, 5]  || f_step[-2..] == [4, 6] || f_step[-2..] == [5, 7] || f_step[-2..] == [5, 3] || f_step[-2..] == [6, 4] || f_step[-2..] == [7, 5] then s_step << teamB

    elsif teamC.include?(bek) then f_step << 3
    elsif f_step[-2..] == [1, 2] || f_step[-2..] == [2, 1]  || f_step[-2..] == [3, 6] || f_step[-2..] == [4, 7] || f_step[-2..] == [6, 3] || f_step[-2..] == [6, 6] || f_step[-2..] == [7, 4] then s_step << teamC

    elsif teamD.include?(bek) then f_step << 4
    elsif f_step[-2..] == [1, 3] || f_step[-2..] == [2, 2]  || f_step[-2..] == [2, 6] || f_step[-2..] == [3, 1] || f_step[-2..] == [3, 7] || f_step[-2..] == [6, 2] || f_step[-2..] == [7, 3] then s_step << teamD

    elsif teamE.include?(bek) then f_step << 5
    elsif f_step[-2..] == [1, 4] || f_step[-2..] == [2, 3]  || f_step[-2..] == [2, 7] || f_step[-2..] == [3, 2] || f_step[-2..] == [4, 1] || f_step[-2..] == [5, 5] || f_step[-2..] == [7, 2] then s_step << teamE

    elsif teamF.include?(bek) then f_step << 6
    elsif f_step[-2..] == [1, 5] || f_step[-2..] == [1, 7]  || f_step[-2..] == [2, 4] || f_step[-2..] == [3, 3] || f_step[-2..] == [4, 2] || f_step[-2..] == [5, 1] || f_step[-2..] == [7, 1] then s_step << teamF

    elsif teamG.include?(bek) then f_step << 7
    elsif f_step[-2..] == [1, 6] || f_step[-2..] == [2, 5]  || f_step[-2..] == [3, 4] || f_step[-2..] == [4, 3] || f_step[-2..] == [5, 2] || f_step[-2..] == [6, 1] || f_step[-2..] == [7, 7] then s_step << teamG

    end

end
puts "------------------------------"
puts "All Spins :", "#{spins[0..-2]}"
puts "------------------------------"


