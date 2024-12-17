#!/usr/bin/ruby

#spin manager
puts "RUBY_VERSION:", RUBY_VERSION

teamA = [1, 7, 13, 19]
teamB = [2, 8, 14, 20]
teamC = [3, 9, 15, 21]
teamD = [4, 10, 16, 22]
teamE = [5, 11, 17, 23]
teamF = [6, 12, 18, 24]
teamG = [0]

spins = []
teams = []

bek = true
bet = false

while bet != "x"
  puts "Give number"
  bet = gets.chomp
  bek = bet.to_i
  spins << "#{bek}"

  if bek > 24 || bek < 0
    spins.pop         
  elsif teamA.include?(bek) then teams << 1   
  elsif teamB.include?(bek) then teams << 2   
  elsif teamC.include?(bek) then teams << 3   
  elsif teamD.include?(bek) then teams << 4   
  elsif teamE.include?(bek) then teams << 5   
  elsif teamF.include?(bek) then teams << 6  
  elsif teamG.include?(bek) then teams << 7 
  end

  puts "Spins are: #{spins}"
  puts "Teams are: #{teams}"

  # Count occurrences of each team
  count_hash = Hash.new(0)
  teams.each { |team| count_hash[team] += 1 }

  # Determine the most common team
  most_common_team = count_hash.max_by { |team, count| count }
  
  if most_common_team
    puts "Most common team: Team #{most_common_team[0]} with #{most_common_team[1]} occurrences"	
  end
  puts count_hash
  
end
