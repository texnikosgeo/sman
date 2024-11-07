#!/usr/bin/ruby

#spin manager
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
teams = []

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
    
if  bek > 24 || bek < 0 then puts '-----'                 
    elsif teamA.include?(bek) then f_step << 1 | teams << 1   
    elsif teamB.include?(bek) then f_step << 2 | teams << 2   
    elsif teamC.include?(bek) then f_step << 3 | teams << 3   
    elsif teamD.include?(bek) then f_step << 4 | teams << 4   
    elsif teamE.include?(bek) then f_step << 5 | teams << 5   
    elsif teamF.include?(bek) then f_step << 6 | teams << 6  
    elsif teamG.include?(bek) then f_step << 7 | teams << 7                                                                     end
if  bek > 24 || bek < 0 then puts '0--24'
    elsif f_step[-2..] == [4, 4] || f_step[-2..] == [4, 5]  || f_step[-2..] == [5, 4] || f_step[-2..] == [5, 6] || f_step[-2..] == [6, 5] || f_step[-2..] == [6, 7] || f_step[-2..] == [7, 6] then s_step << 1
    elsif f_step[-2..] == [1, 1] || f_step[-2..] == [3, 5]  || f_step[-2..] == [4, 6] || f_step[-2..] == [5, 7] || f_step[-2..] == [5, 3] || f_step[-2..] == [6, 4] || f_step[-2..] == [7, 5] then s_step << 2
    elsif f_step[-2..] == [1, 2] || f_step[-2..] == [2, 1]  || f_step[-2..] == [3, 6] || f_step[-2..] == [4, 7] || f_step[-2..] == [6, 3] || f_step[-2..] == [6, 6] || f_step[-2..] == [7, 4] then s_step << 3                                              elsif f_step[-2..] == [1, 3] || f_step[-2..] == [2, 2]  || f_step[-2..] == [2, 6] || f_step[-2..] == [3, 1] || f_step[-2..] == [3, 7] || f_step[-2..] == [6, 2] || f_step[-2..] == [7, 3] then s_step << 4                                              elsif f_step[-2..] == [1, 4] || f_step[-2..] == [2, 3]  || f_step[-2..] == [2, 7] || f_step[-2..] == [3, 2] || f_step[-2..] == [4, 1] || f_step[-2..] == [5, 5] || f_step[-2..] == [7, 2] then s_step << 5
    elsif f_step[-2..] == [1, 5] || f_step[-2..] == [1, 7]  || f_step[-2..] == [2, 4] || f_step[-2..] == [3, 3] || f_step[-2..] == [4, 2] || f_step[-2..] == [5, 1] || f_step[-2..] == [7, 1] then s_step << 6
    elsif f_step[-2..] == [1, 6] || f_step[-2..] == [2, 5]  || f_step[-2..] == [3, 4] || f_step[-2..] == [4, 3] || f_step[-2..] == [5, 2] || f_step[-2..] == [6, 1] || f_step[-2..] == [7, 7] then s_step << 7

    end

if  bek > 24 || bek < 0 then puts '-----'   
elsif f_step[-4..-3] == [4, 4] || f_step[-4..-3] == [4, 5]  || f_step[-4..-3] == [5, 4] || f_step[-4..-3] == [5, 6] || f_step[-4..-3] == [6, 5] || f_step[-4..-3] == [6, 7] || f_step[-4..-3] == [7, 6] then t_step << 1        
elsif f_step[-4..-3] == [1, 1] || f_step[-4..-3] == [3, 5]  || f_step[-4..-3] == [4, 6] || f_step[-4..-3] == [5, 7] || f_step[-4..-3] == [5, 3] || f_step[-4..-3] == [6, 4] || f_step[-4..-3] == [7, 5] then t_step << 2     
elsif f_step[-4..-3] == [1, 2] || f_step[-4..-3] == [2, 1]  || f_step[-4..-3] == [3, 6] || f_step[-4..-3] == [4, 7] || f_step[-4..-3] == [6, 3] || f_step[-4..-3] == [6, 6] || f_step[-4..-3] == [7, 4] then t_step << 3   
elsif f_step[-4..-3] == [1, 3] || f_step[-4..-3] == [2, 2]  || f_step[-4..-3] == [2, 6] || f_step[-4..-3] == [3, 1] || f_step[-4..-3] == [3, 7] || f_step[-4..-3] == [6, 2] || f_step[-4..-3] == [7, 3] then t_step << 4                               
elsif f_step[-4..-3] == [1, 4] || f_step[-4..-3] == [2, 3]  || f_step[-4..-3] == [2, 7] || f_step[-4..-3] == [3, 2] || f_step[-4..-3] == [4, 1] || f_step[-4..-3] == [5, 5] || f_step[-4..-3] == [7, 2] then t_step << 5                             
elsif f_step[-4..-3] == [1, 5] || f_step[-4..-3] == [1, 7]  || f_step[-4..-3] == [2, 4] || f_step[-4..-3] == [3, 3] || f_step[-4..-3] == [4, 2] || f_step[-4..-3] == [5, 1] || f_step[-4..-3] == [7, 1] then t_step << 6  
elsif f_step[-4..-3] == [1, 6] || f_step[-4..-3] == [2, 5]  || f_step[-4..-3] == [3, 4] || f_step[-4..-3] == [4, 3] || f_step[-4..-3] == [5, 2] || f_step[-4..-3] == [6, 1] || f_step[-4..-3] == [7, 7] then t_step << 7                                                                                              end
    
put "first step is :", "#{f_step}"
#puts "------------------------------"
#puts "------------------------------"
#puts "Second step is :", "#{s_step}"
#puts "------------------------------"
puts "#{f_step[-4..-2].step(2)}"
#puts "------------------------------"
#puts "3 step is :", "#{t_step}"#puts "---->

end
puts "------------------------------"
puts "All Spins :", "#{spins[0..-2]}"
puts "------------------------------"


