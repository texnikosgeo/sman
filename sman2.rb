#!/usr/bin/ruby

#spin manager V2.11
puts "RUBY_VERSION:", RUBY_VERSION

teamA = 1, 7, 13, 19
teamB = 2, 8, 14, 20
teamC = 3, 9, 15, 21
teamD = 4, 10, 16, 22
teamE = 5, 11, 17, 23
teamF = 6, 12, 18, 24
teamG = [0]

spins = []
f_step = []
s_step = []
t_step = []
n_step =[]
predict = []
predictor = []

bek = true
bet = false
x = true

while bet != "x"

puts "give bet"
bet = gets.chomp
bek = bet.to_i
spins << "#{bek}"

    if  bek < 0 then puts ''
    elsif teamA.include?(bek) then f_step << 1 
    elsif teamB.include?(bek) then f_step << 2 
    elsif teamC.include?(bek) then f_step << 3 
    elsif teamD.include?(bek) then f_step << 4 
    elsif teamE.include?(bek) then f_step << 5 
    elsif teamF.include?(bek) then f_step << 6 
    elsif teamG.include?(bek) then f_step << 7 

    end

    if  bek < 0 then puts ''
    elsif f_step[-2..] == [4, 4] || f_step[-2..] == [4, 5]  || f_step[-2..] == [5, 4] || f_step[-2..] == [5, 6] || f_step[-2..] == [6, 5] || f_step[-2..] == [6, 7] || f_step[-2..] == [7, 6] then s_step << 1
    elsif f_step[-2..] == [1, 1] || f_step[-2..] == [3, 5]  || f_step[-2..] == [4, 6] || f_step[-2..] == [5, 7] || f_step[-2..] == [5, 3] || f_step[-2..] == [6, 4] || f_step[-2..] == [7, 5] then s_step << 2
    elsif f_step[-2..] == [1, 2] || f_step[-2..] == [2, 1]  || f_step[-2..] == [3, 6] || f_step[-2..] == [4, 7] || f_step[-2..] == [6, 3] || f_step[-2..] == [6, 6] || f_step[-2..] == [7, 4] then s_step << 3
    elsif f_step[-2..] == [1, 3] || f_step[-2..] == [2, 2]  || f_step[-2..] == [2, 6] || f_step[-2..] == [3, 1] || f_step[-2..] == [3, 7] || f_step[-2..] == [6, 2] || f_step[-2..] == [7, 3] then s_step << 4
    elsif f_step[-2..] == [1, 4] || f_step[-2..] == [2, 3]  || f_step[-2..] == [2, 7] || f_step[-2..] == [3, 2] || f_step[-2..] == [4, 1] || f_step[-2..] == [5, 5] || f_step[-2..] == [7, 2] then s_step << 5
    elsif f_step[-2..] == [1, 5] || f_step[-2..] == [1, 7]  || f_step[-2..] == [2, 4] || f_step[-2..] == [3, 3] || f_step[-2..] == [4, 2] || f_step[-2..] == [5, 1] || f_step[-2..] == [7, 1] then s_step << 6
    elsif f_step[-2..] == [1, 6] || f_step[-2..] == [2, 5]  || f_step[-2..] == [3, 4] || f_step[-2..] == [4, 3] || f_step[-2..] == [5, 2] || f_step[-2..] == [6, 1] || f_step[-2..] == [7, 7] then s_step << 7

    end

    if  bek < 0 then puts '0--24'
    elsif s_step[-2..] == [4, 4] || s_step[-2..] == [4, 5]  || s_step[-2..] == [5, 4] || s_step[-2..] == [5, 6] || s_step[-2..] == [6, 5] || s_step[-2..] == [6, 7] || s_step[-2..] == [7, 6] then t_step << 1
    elsif s_step[-2..] == [1, 1] || s_step[-2..] == [3, 5]  || s_step[-2..] == [4, 6] || s_step[-2..] == [5, 7] || s_step[-2..] == [5, 3] || s_step[-2..] == [6, 4] || s_step[-2..] == [7, 5] then t_step << 2
    elsif s_step[-2..] == [1, 2] || s_step[-2..] == [2, 1]  || s_step[-2..] == [3, 6] || s_step[-2..] == [4, 7] || s_step[-2..] == [6, 3] || s_step[-2..] == [6, 6] || s_step[-2..] == [7, 4] then t_step << 3
    elsif s_step[-2..] == [1, 3] || s_step[-2..] == [2, 2]  || s_step[-2..] == [2, 6] || s_step[-2..] == [3, 1] || s_step[-2..] == [3, 7] || s_step[-2..] == [6, 2] || s_step[-2..] == [7, 3] then t_step << 4
    elsif s_step[-2..] == [1, 4] || s_step[-2..] == [2, 3]  || s_step[-2..] == [2, 7] || s_step[-2..] == [3, 2] || s_step[-2..] == [4, 1] || s_step[-2..] == [5, 5] || s_step[-2..] == [7, 2] then t_step << 5
    elsif s_step[-2..] == [1, 5] || s_step[-2..] == [1, 7]  || s_step[-2..] == [2, 4] || s_step[-2..] == [3, 3] || s_step[-2..] == [4, 2] || s_step[-2..] == [5, 1] || s_step[-2..] == [7, 1] then t_step << 6
    elsif s_step[-2..] == [1, 6] || s_step[-2..] == [2, 5]  || s_step[-2..] == [3, 4] || s_step[-2..] == [4, 3] || s_step[-2..] == [5, 2] || s_step[-2..] == [6, 1] || s_step[-2..] == [7, 7] then t_step << 7

    end


    if  bek < 0 then puts ''
    elsif t_step[-2..] == [4, 4] || t_step[-2..] == [4, 5]  || t_step[-2..] == [5, 4] || t_step[-2..] == [5, 6] || t_step[-2..] == [6, 5] || t_step[-2..] == [6, 7] || t_step[-2..] == [7, 6] then n_step << 1
    elsif t_step[-2..] == [1, 1] || t_step[-2..] == [3, 5]  || t_step[-2..] == [4, 6] || t_step[-2..] == [5, 7] || t_step[-2..] == [5, 3] || t_step[-2..] == [6, 4] || t_step[-2..] == [7, 5] then n_step << 2
    elsif t_step[-2..] == [1, 2] || t_step[-2..] == [2, 1]  || t_step[-2..] == [3, 6] || t_step[-2..] == [4, 7] || t_step[-2..] == [6, 3] || t_step[-2..] == [6, 6] || t_step[-2..] == [7, 4] then n_step << 3
    elsif t_step[-2..] == [1, 3] || t_step[-2..] == [2, 2]  || t_step[-2..] == [2, 6] || t_step[-2..] == [3, 1] || t_step[-2..] == [3, 7] || t_step[-2..] == [6, 2] || t_step[-2..] == [7, 3] then n_step << 4
    elsif t_step[-2..] == [1, 4] || t_step[-2..] == [2, 3]  || t_step[-2..] == [2, 7] || t_step[-2..] == [3, 2] || t_step[-2..] == [4, 1] || t_step[-2..] == [5, 5] || t_step[-2..] == [7, 2] then n_step << 5
    elsif t_step[-2..] == [1, 5] || t_step[-2..] == [1, 7]  || t_step[-2..] == [2, 4] || t_step[-2..] == [3, 3] || t_step[-2..] == [4, 2] || t_step[-2..] == [5, 1] || t_step[-2..] == [7, 1] then n_step << 6
    elsif t_step[-2..] == [1, 6] || t_step[-2..] == [2, 5]  || t_step[-2..] == [3, 4] || t_step[-2..] == [4, 3] || t_step[-2..] == [5, 2] || t_step[-2..] == [6, 1] || t_step[-2..] == [7, 7] then n_step << 7

    end



    if  bek < 0 then puts ''
    elsif predict.flatten[-2..] == [4, 4] || predict.flatten[-2..] == [4, 5]  || predict.flatten[-2..] == [5, 4] || predict.flatten[-2..] == [5, 6] || predict.flatten[-2..] == [6, 5] || predict.flatten[-2..] == [6, 7] || predict.flatten[-2..] == [7, 6] then predictor << teamA
    elsif predict.flatten[-2..] == [1, 1] || predict.flatten[-2..] == [3, 5]  || predict.flatten[-2..] == [4, 6] || predict.flatten[-2..] == [5, 7] || predict.flatten[-2..] == [5, 3] || predict.flatten[-2..] == [6, 4] || predict.flatten[-2..] == [7, 5] then predictor << teamB
    elsif predict.flatten[-2..] == [1, 2] || predict.flatten[-2..] == [2, 1]  || predict.flatten[-2..] == [3, 6] || predict.flatten[-2..] == [4, 7] || predict.flatten[-2..] == [6, 3] || predict.flatten[-2..] == [6, 6] || predict.flatten[-2..] == [7, 4] then predictor << teamC
    elsif predict.flatten[-2..] == [1, 3] || predict.flatten[-2..] == [2, 2]  || predict.flatten[-2..] == [2, 6] || predict.flatten[-2..] == [3, 1] || predict.flatten[-2..] == [3, 7] || predict.flatten[-2..] == [6, 2] || predict.flatten[-2..] == [7, 3] then predictor << teamD
    elsif predict.flatten[-2..] == [1, 4] || predict.flatten[-2..] == [2, 3]  || predict.flatten[-2..] == [2, 7] || predict.flatten[-2..] == [3, 2] || predict.flatten[-2..] == [4, 1] || predict.flatten[-2..] == [5, 5] || predict.flatten[-2..] == [7, 2] then predictor << teamE
    elsif predict.flatten[-2..] == [1, 5] || predict.flatten[-2..] == [1, 7]  || predict.flatten[-2..] == [2, 4] || predict.flatten[-2..] == [3, 3] || predict.flatten[-2..] == [4, 2] || predict.flatten[-2..] == [5, 1] || predict.flatten[-2..] == [7, 1] then predictor << teamF
    elsif predict.flatten[-2..] == [1, 6] || predict.flatten[-2..] == [2, 5]  || predict.flatten[-2..] == [3, 4] || predict.flatten[-2..] == [4, 3] || predict.flatten[-2..] == [5, 2] || predict.flatten[-2..] == [6, 1] || predict.flatten[-2..] == [7, 7] then predictor << teamG

    end
puts "------------------------------"
puts "1st is :", "#{f_step}"
puts "------------------------------"
puts "2nd is :", "#{s_step}"
puts "------------------------------"
puts "3rd is :", "#{t_step}"
puts "------------------------------"
puts "4th is :", "#{n_step}"
puts "------------------------------"
puts "prediction is :", "#{predict.flatten}"
puts "------------------------------"
puts "prediction is :", "#{predictor.pop}"
puts "------------------------------"

if bek > 24 || bek < 0 then spins.pop end

end
puts "------------------------------"
puts "All Spins :", "#{spins[0..-2]}"
puts "------------------------------"
