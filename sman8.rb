#!/usr/bin/ruby

#spin manager
puts "RUBY_VERSION:", RUBY_VERSION
teamA = 1, 7, 13, 19
teamB = 2, 8, 14, 20
teamC = 3, 9, 15, 21
teamD = 4, 10, 16, 22
teamE = 5, 11, 17, 23
teamF = 6, 12, 18, 24
teamG = 0
teams = []
stepA = []
stepB = []
stepC = []

terminator= true
translator = true
predictor1 = true
predictor2 = true
predictor3 = true
predictor4 = true
spins = []
bek = true
bet = false
x=true

puts "give previous bet"
bet = gets.chomp
bek = bet.to_i

while bet != "x"

puts "give bet"
bet = gets.chomp
bek = bet.to_i
spins << "#{bek}"
puts "------------------------------"
puts "All Spins :", "#{spins[0..-2]}"
puts "------------------------------"
puts "------------------------------"
puts "last teams :", "#{teams}"
puts "------------------------------"
puts "------------------------------"
puts "StepA teams :", "#{stepA}"
puts "------------------------------"

    case translator
    when teamA.include?(bek) then teams << "1"
 
    when teamB.include?(bek) then teams << "2"

    when teamC.include?(bek) then teams << "3"

    when teamD.include?(bek) then teams << "4"

    when teamE.include?(bek) then teams << "5"

    when teamF.include?(bek) then teams << "6"

    when bek == 0            then teams << "7"

    end

    case predictor1
    when (teams[0] == "1" && teams[1] == "1") then stepA << "2"
    when (teams[0] == "1" && teams[1] == "2") then stepA << "3"
    when (teams[0] == "1" && teams[1] == "3") then stepA << "4"
    when (teams[0] == "1" && teams[1] == "4") then stepA << "5"
    when (teams[0] == "1" && teams[1] == "5") then stepA << "6"
    when (teams[0] == "1" && teams[1] == "6") then stepA << "7"
    when (teams[0] == "1" && teams[1] == "7") then stepA << "6"
    when (teams[0] == "2" && teams[1] == "1") then stepA << "3"
    when (teams[0] == "2" && teams[1] == "2") then stepA << "4"
    when (teams[0] == "2" && teams[1] == "3") then stepA << "5"
    when (teams[0] == "2" && teams[1] == "4") then stepA << "6"
    when (teams[0] == "2" && teams[1] == "5") then stepA << "7"
    when (teams[0] == "2" && teams[1] == "6") then stepA << "4"
    when (teams[0] == "2" && teams[1] == "7") then stepA << "5"
    when (teams[0] == "3" && teams[1] == "1") then stepA << "4"
    when (teams[0] == "3" && teams[1] == "2") then stepA << "5"
    when (teams[0] == "3" && teams[1] == "3") then stepA << "6"
    when (teams[0] == "3" && teams[1] == "4") then stepA << "7"
    when (teams[0] == "3" && teams[1] == "5") then stepA << "2"
    when (teams[0] == "3" && teams[1] == "6") then stepA << "3"
    when (teams[0] == "3" && teams[1] == "7") then stepA << "4"
    when (teams[0] == "4" && teams[1] == "1") then stepA << "5"
    when (teams[0] == "4" && teams[1] == "2") then stepA << "6"
    when (teams[0] == "4" && teams[1] == "3") then stepA << "7"
    when (teams[0] == "4" && teams[1] == "4") then stepA << "1"
    when (teams[0] == "4" && teams[1] == "5") then stepA << "1"
    when (teams[0] == "4" && teams[1] == "6") then stepA << "2"
    when (teams[0] == "4" && teams[1] == "7") then stepA << "3"
    when (teams[0] == "5" && teams[1] == "1") then stepA << "6"
    when (teams[0] == "5" && teams[1] == "2") then stepA << "7"
    when (teams[0] == "5" && teams[1] == "3") then stepA << "2"
    when (teams[0] == "5" && teams[1] == "4") then stepA << "1"
    when (teams[0] == "5" && teams[1] == "5") then stepA << "5"
    when (teams[0] == "5" && teams[1] == "6") then stepA << "1"
    when (teams[0] == "5" && teams[1] == "7") then stepA << "2"
    when (teams[0] == "6" && teams[1] == "1") then stepA << "7"
    when (teams[0] == "6" && teams[1] == "2") then stepA << "4"
    when (teams[0] == "6" && teams[1] == "3") then stepA << "3"
    when (teams[0] == "6" && teams[1] == "4") then stepA << "2"
    when (teams[0] == "6" && teams[1] == "5") then stepA << "1"
    when (teams[0] == "6" && teams[1] == "6") then stepA << "3"
    when (teams[0] == "6" && teams[1] == "7") then stepA << "1"
    when (teams[0] == "7" && teams[1] == "1") then stepA << "6"
    when (teams[0] == "7" && teams[1] == "2") then stepA << "5"
    when (teams[0] == "7" && teams[1] == "3") then stepA << "4"
    when (teams[0] == "7" && teams[1] == "4") then stepA << "3"
    when (teams[0] == "7" && teams[1] == "5") then stepA << "2"
    when (teams[0] == "7" && teams[1] == "6") then stepA << "1"
    when (teams[0] == "7" && teams[1] == "7") then stepA << "7"
    end

    case predictor2
    when (teams[1] == "1" && teams[2] == "1") then stepA << "2"
    when (teams[1] == "1" && teams[2] == "2") then stepA << "3"
    when (teams[1] == "1" && teams[2] == "3") then stepA << "4"
    when (teams[1] == "1" && teams[2] == "4") then stepA << "5"
    when (teams[1] == "1" && teams[2] == "5") then stepA << "6"
    when (teams[1] == "1" && teams[2] == "6") then stepA << "7"
    when (teams[1] == "1" && teams[2] == "7") then stepA << "6"
    when (teams[1] == "2" && teams[2] == "1") then stepA << "3"
    when (teams[1] == "2" && teams[2] == "2") then stepA << "4"
    when (teams[1] == "2" && teams[2] == "3") then stepA << "5"
    when (teams[1] == "2" && teams[2] == "4") then stepA << "6"
    when (teams[1] == "2" && teams[2] == "5") then stepA << "7"
    when (teams[1] == "2" && teams[2] == "6") then stepA << "4"
    when (teams[1] == "2" && teams[2] == "7") then stepA << "5"
    when (teams[1] == "3" && teams[2] == "1") then stepA << "4"
    when (teams[1] == "3" && teams[2] == "2") then stepA << "5"
    when (teams[1] == "3" && teams[2] == "3") then stepA << "6"
    when (teams[1] == "3" && teams[2] == "4") then stepA << "7"
    when (teams[1] == "3" && teams[2] == "5") then stepA << "2"
    when (teams[1] == "3" && teams[2] == "6") then stepA << "3"
    when (teams[1] == "3" && teams[2] == "7") then stepA << "4"
    when (teams[1] == "4" && teams[2] == "1") then stepA << "5"
    when (teams[1] == "4" && teams[2] == "2") then stepA << "6"
    when (teams[1] == "4" && teams[2] == "3") then stepA << "7"
    when (teams[1] == "4" && teams[2] == "4") then stepA << "1"
    when (teams[1] == "4" && teams[2] == "5") then stepA << "1"
    when (teams[1] == "4" && teams[2] == "6") then stepA << "2"
    when (teams[1] == "4" && teams[2] == "7") then stepA << "3"
    when (teams[1] == "5" && teams[2] == "1") then stepA << "6"
    when (teams[1] == "5" && teams[2] == "2") then stepA << "7"
    when (teams[1] == "5" && teams[2] == "3") then stepA << "2"
    when (teams[1] == "5" && teams[2] == "4") then stepA << "1"
    when (teams[1] == "5" && teams[2] == "5") then stepA << "5"
    when (teams[1] == "5" && teams[2] == "6") then stepA << "1"
    when (teams[1] == "5" && teams[2] == "7") then stepA << "2"
    when (teams[1] == "6" && teams[2] == "1") then stepA << "7"
    when (teams[1] == "6" && teams[2] == "2") then stepA << "4"
    when (teams[1] == "6" && teams[2] == "3") then stepA << "3"
    when (teams[1] == "6" && teams[2] == "4") then stepA << "2"
    when (teams[1] == "6" && teams[2] == "5") then stepA << "1"
    when (teams[1] == "6" && teams[2] == "6") then stepA << "3"
    when (teams[1] == "6" && teams[2] == "7") then stepA << "1"
    when (teams[1] == "7" && teams[2] == "1") then stepA << "6"
    when (teams[1] == "7" && teams[2] == "2") then stepA << "5"
    when (teams[1] == "7" && teams[2] == "3") then stepA << "4"
    when (teams[1] == "7" && teams[2] == "4") then stepA << "3"
    when (teams[1] == "7" && teams[2] == "5") then stepA << "2"
    when (teams[1] == "7" && teams[2] == "6") then stepA << "1"
    when (teams[1] == "7" && teams[2] == "7") then stepA << "7"
    end

    case predictor3
    when (teams[2] == "1" && teams[3] == "1") then stepA << "2"
    when (teams[2] == "1" && teams[3] == "2") then stepA << "3"
    when (teams[2] == "1" && teams[3] == "3") then stepA << "4"
    when (teams[2] == "1" && teams[3] == "4") then stepA << "5"
    when (teams[2] == "1" && teams[3] == "5") then stepA << "6"
    when (teams[2] == "1" && teams[3] == "6") then stepA << "7"
    when (teams[2] == "1" && teams[3] == "7") then stepA << "6"
    when (teams[2] == "2" && teams[3] == "1") then stepA << "3"
    when (teams[2] == "2" && teams[3] == "2") then stepA << "4"
    when (teams[2] == "2" && teams[3] == "3") then stepA << "5"
    when (teams[2] == "2" && teams[3] == "4") then stepA << "6"
    when (teams[2] == "2" && teams[3] == "5") then stepA << "7"
    when (teams[2] == "2" && teams[3] == "6") then stepA << "4"
    when (teams[2] == "2" && teams[3] == "7") then stepA << "5"
    when (teams[2] == "3" && teams[3] == "1") then stepA << "4"
    when (teams[2] == "3" && teams[3] == "2") then stepA << "5"
    when (teams[2] == "3" && teams[3] == "3") then stepA << "6"
    when (teams[2] == "3" && teams[3] == "4") then stepA << "7"
    when (teams[2] == "3" && teams[3] == "5") then stepA << "2"
    when (teams[2] == "3" && teams[3] == "6") then stepA << "3"
    when (teams[2] == "3" && teams[3] == "7") then stepA << "4"
    when (teams[2] == "4" && teams[3] == "1") then stepA << "5"
    when (teams[2] == "4" && teams[3] == "2") then stepA << "6"
    when (teams[2] == "4" && teams[3] == "3") then stepA << "7"
    when (teams[2] == "4" && teams[3] == "4") then stepA << "1"
    when (teams[2] == "4" && teams[3] == "5") then stepA << "1"
    when (teams[2] == "4" && teams[3] == "6") then stepA << "2"
    when (teams[2] == "4" && teams[3] == "7") then stepA << "3"
    when (teams[2] == "5" && teams[3] == "1") then stepA << "6"
    when (teams[2] == "5" && teams[3] == "2") then stepA << "7"
    when (teams[2] == "5" && teams[3] == "3") then stepA << "2"
    when (teams[2] == "5" && teams[3] == "4") then stepA << "1"
    when (teams[2] == "5" && teams[3] == "5") then stepA << "5"
    when (teams[2] == "5" && teams[3] == "6") then stepA << "1"
    when (teams[2] == "5" && teams[3] == "7") then stepA << "2"
    when (teams[2] == "6" && teams[3] == "1") then stepA << "7"
    when (teams[2] == "6" && teams[3] == "2") then stepA << "4"
    when (teams[2] == "6" && teams[3] == "3") then stepA << "3"
    when (teams[2] == "6" && teams[3] == "4") then stepA << "2"
    when (teams[2] == "6" && teams[3] == "5") then stepA << "1"
    when (teams[2] == "6" && teams[3] == "6") then stepA << "3"
    when (teams[2] == "6" && teams[3] == "7") then stepA << "1"
    when (teams[2] == "7" && teams[3] == "1") then stepA << "6"
    when (teams[2] == "7" && teams[3] == "2") then stepA << "5"
    when (teams[2] == "7" && teams[3] == "3") then stepA << "4"
    when (teams[2] == "7" && teams[3] == "4") then stepA << "3"
    when (teams[2] == "7" && teams[3] == "5") then stepA << "2"
    when (teams[2] == "7" && teams[3] == "6") then stepA << "1"
    when (teams[2] == "7" && teams[3] == "7") then stepA << "7"

    end

end



