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
if  bek > 24 || bek < 0 then puts '---->

    elsif teamA.include?(bek) then f_step <>

    elsif teamB.include?(bek) then f_step <>

    elsif teamC.include?(bek) then f_step <>

    elsif teamD.include?(bek) then f_step <>

    elsif teamE.include?(bek) then f_step <>

    elsif teamF.include?(bek) then f_step <>

    elsif teamG.include?(bek) then f_step <>

    end
if  bek > 24 || bek < 0 then puts '0--2>
    elsif f_step[-2..] == [4, 4] || f_step[>
    elsif f_step[-2..] == [1, 1] || f_step[>
    elsif f_step[-2..] == [1, 2] || f_step[>
    elsif f_step[-2..] == [1, 3] || f_step[>
    elsif f_step[-2..] == [1, 4] || f_step[>
    elsif f_step[-2..] == [1, 5] || f_step[>
    elsif f_step[-2..] == [1, 6] || f_step[>

    end
if  bek > 24 || bek < 0 then puts '---->
    elsif f_step[-4..-3] == [4, 4] || f_ste>
    elsif f_step[-4..-3] == [1, 1] || f_ste>
    elsif f_step[-4..-3] == [1, 2] || f_ste>
    elsif f_step[-4..-3] == [1, 3] || f_ste>
    elsif f_step[-4..-3] == [1, 4] || f_ste>
    elsif f_step[-4..-3] == [1, 5] || f_ste>
    elsif f_step[-4..-3] == [1, 6] || f_ste>

    end
#puts "------------------------------"
puts "first step is :", "#{f_step}"
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


