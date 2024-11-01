#!/usr/bin/ruby

#spin manager

teamA = 1, 7, 13, 19
teamB = 2, 8, 14, 20
teamC = 3, 9, 15, 21
teamD = 4, 10, 16, 22
teamE = 5, 11, 17, 23
teamF = 6, 12, 18, 24
teamG = 0,

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
f_step = []
s_step = []

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


# step 2 row 1
if (f_step[0] == 1 && f_step[1] == 1) then s_step << 2 end
if (f_step[0] == 1 && f_step[1] == 2) then s_step << 3 end
if (f_step[0] == 1 && f_step[1] == 3) then s_step << 4 end
if (f_step[0] == 1 && f_step[1] == 4) then s_step << 5 end
if (f_step[0] == 1 && f_step[1] == 5) then s_step << 6 end
if (f_step[0] == 1 && f_step[1] == 6) then s_step << 7 end
if (f_step[0] == 1 && f_step[1] == 7) then s_step << 6 end

if (f_step[0] == 2 && f_step[1] == 1) then s_step << 3 end
if (f_step[0] == 2 && f_step[1] == 2) then s_step << 4 end
if (f_step[0] == 2 && f_step[1] == 3) then s_step << 5 end
if (f_step[0] == 2 && f_step[1] == 4) then s_step << 6 end
if (f_step[0] == 2 && f_step[1] == 5) then s_step << 7 end
if (f_step[0] == 2 && f_step[1] == 6) then s_step << 4 end
if (f_step[0] == 2 && f_step[1] == 7) then s_step << 5 end

if (f_step[0] == 3 && f_step[1] == 1) then s_step << 4 end
if (f_step[0] == 3 && f_step[1] == 2) then s_step << 5 end
if (f_step[0] == 3 && f_step[1] == 3) then s_step << 6 end
if (f_step[0] == 3 && f_step[1] == 4) then s_step << 7 end
if (f_step[0] == 3 && f_step[1] == 5) then s_step << 2 end
if (f_step[0] == 3 && f_step[1] == 6) then s_step << 3 end
if (f_step[0] == 3 && f_step[1] == 7) then s_step << 4 end

if (f_step[0] == 4 && f_step[1] == 1) then s_step << 5 end
if (f_step[0] == 4 && f_step[1] == 2) then s_step << 6 end
if (f_step[0] == 4 && f_step[1] == 3) then s_step << 7 end
if (f_step[0] == 4 && f_step[1] == 4) then s_step << 1 end
if (f_step[0] == 4 && f_step[1] == 5) then s_step << 1 end
if (f_step[0] == 4 && f_step[1] == 6) then s_step << 2 end
if (f_step[0] == 4 && f_step[1] == 7) then s_step << 3 end

if (f_step[0] == 5 && f_step[1] == 1) then s_step << 6 end
if (f_step[0] == 5 && f_step[1] == 2) then s_step << 7 end
if (f_step[0] == 5 && f_step[1] == 3) then s_step << 2 end
if (f_step[0] == 5 && f_step[1] == 4) then s_step << 1 end
if (f_step[0] == 5 && f_step[1] == 5) then s_step << 5 end
if (f_step[0] == 5 && f_step[1] == 6) then s_step << 1 end
if (f_step[0] == 5 && f_step[1] == 7) then s_step << 2 end

if (f_step[0] == 6 && f_step[1] == 1) then s_step << 7 end
if (f_step[0] == 6 && f_step[1] == 2) then s_step << 4 end
if (f_step[0] == 6 && f_step[1] == 3) then s_step << 3 end
if (f_step[0] == 6 && f_step[1] == 4) then s_step << 2 end
if (f_step[0] == 6 && f_step[1] == 5) then s_step << 1 end
if (f_step[0] == 6 && f_step[1] == 6) then s_step << 3 end
if (f_step[0] == 6 && f_step[1] == 7) then s_step << 1 end

if (f_step[0] == 7 && f_step[1] == 1) then s_step << 6 end
if (f_step[0] == 7 && f_step[1] == 2) then s_step << 5 end
if (f_step[0] == 7 && f_step[1] == 3) then s_step << 4 end
if (f_step[0] == 7 && f_step[1] == 4) then s_step << 3 end
if (f_step[0] == 7 && f_step[1] == 5) then s_step << 2 end
if (f_step[0] == 7 && f_step[1] == 6) then s_step << 1 end
if (f_step[0] == 7 && f_step[1] == 7) then s_step << 7 end
# step 2 row 2
if (f_step[1] == 1 && f_step[2] == 1) then s_step << 2 end
if (f_step[1] == 1 && f_step[2] == 2) then s_step << 3 end
if (f_step[1] == 1 && f_step[2] == 3) then s_step << 4 end
if (f_step[1] == 1 && f_step[2] == 4) then s_step << 5 end
if (f_step[1] == 1 && f_step[2] == 5) then s_step << 6 end
if (f_step[1] == 1 && f_step[2] == 6) then s_step << 7 end
if (f_step[1] == 1 && f_step[2] == 7) then s_step << 6 end

if (f_step[1] == 2 && f_step[2] == 1) then s_step << 3 end
if (f_step[1] == 2 && f_step[2] == 2) then s_step << 4 end
if (f_step[1] == 2 && f_step[2] == 3) then s_step << 5 end
if (f_step[1] == 2 && f_step[2] == 4) then s_step << 6 end
if (f_step[1] == 2 && f_step[2] == 5) then s_step << 7 end
if (f_step[1] == 2 && f_step[2] == 6) then s_step << 4 end
if (f_step[1] == 2 && f_step[2] == 7) then s_step << 5 end

if (f_step[1] == 3 && f_step[2] == 1) then s_step << 4 end
if (f_step[1] == 3 && f_step[2] == 2) then s_step << 5 end
if (f_step[1] == 3 && f_step[2] == 3) then s_step << 6 end
if (f_step[1] == 3 && f_step[2] == 4) then s_step << 7 end
if (f_step[1] == 3 && f_step[2] == 5) then s_step << 2 end
if (f_step[1] == 3 && f_step[2] == 6) then s_step << 3 end
if (f_step[1] == 3 && f_step[2] == 7) then s_step << 4 end

if (f_step[1] == 4 && f_step[2] == 1) then s_step << 5 end
if (f_step[1] == 4 && f_step[2] == 2) then s_step << 6 end
if (f_step[1] == 4 && f_step[2] == 3) then s_step << 7 end
if (f_step[1] == 4 && f_step[2] == 4) then s_step << 1 end
if (f_step[1] == 4 && f_step[2] == 5) then s_step << 1 end
if (f_step[1] == 4 && f_step[2] == 6) then s_step << 2 end
if (f_step[1] == 4 && f_step[2] == 7) then s_step << 3 end

if (f_step[1] == 5 && f_step[2] == 1) then s_step << 6 end
if (f_step[1] == 5 && f_step[2] == 2) then s_step << 7 end
if (f_step[1] == 5 && f_step[2] == 3) then s_step << 2 end
if (f_step[1] == 5 && f_step[2] == 4) then s_step << 1 end
if (f_step[1] == 5 && f_step[2] == 5) then s_step << 5 end
if (f_step[1] == 5 && f_step[2] == 6) then s_step << 1 end
if (f_step[1] == 5 && f_step[2] == 7) then s_step << 2 end

if (f_step[1] == 6 && f_step[2] == 1) then s_step << 7 end
if (f_step[1] == 6 && f_step[2] == 2) then s_step << 4 end
if (f_step[1] == 6 && f_step[2] == 3) then s_step << 3 end
if (f_step[1] == 6 && f_step[2] == 4) then s_step << 2 end
if (f_step[1] == 6 && f_step[2] == 5) then s_step << 1 end
if (f_step[1] == 6 && f_step[2] == 6) then s_step << 3 end
if (f_step[1] == 6 && f_step[2] == 7) then s_step << 1 end

if (f_step[1] == 7 && f_step[2] == 1) then s_step << 6 end
if (f_step[1] == 7 && f_step[2] == 2) then s_step << 5 end
if (f_step[1] == 7 && f_step[2] == 3) then s_step << 4 end
if (f_step[1] == 7 && f_step[2] == 4) then s_step << 3 end
if (f_step[1] == 7 && f_step[2] == 5) then s_step << 2 end
if (f_step[1] == 7 && f_step[2] == 6) then s_step << 1 end
if (f_step[1] == 7 && f_step[2] == 7) then s_step << 7 end
# step 2 row 3
if (f_step[2] == 1 && f_step[3] == 1) then s_step << 2 end
if (f_step[2] == 1 && f_step[3] == 2) then s_step << 3 end
if (f_step[2] == 1 && f_step[3] == 3) then s_step << 4 end
if (f_step[2] == 1 && f_step[3] == 4) then s_step << 5 end
if (f_step[2] == 1 && f_step[3] == 5) then s_step << 6 end
if (f_step[2] == 1 && f_step[3] == 6) then s_step << 7 end
if (f_step[2] == 1 && f_step[3] == 7) then s_step << 6 end

if (f_step[2] == 2 && f_step[3] == 1) then s_step << 3 end
if (f_step[2] == 2 && f_step[3] == 2) then s_step << 4 end
if (f_step[2] == 2 && f_step[3] == 3) then s_step << 5 end
if (f_step[2] == 2 && f_step[3] == 4) then s_step << 6 end
if (f_step[2] == 2 && f_step[3] == 5) then s_step << 7 end
if (f_step[2] == 2 && f_step[3] == 6) then s_step << 4 end
if (f_step[2] == 2 && f_step[3] == 7) then s_step << 5 end

if (f_step[2] == 3 && f_step[3] == 1) then s_step << 4 end
if (f_step[2] == 3 && f_step[3] == 2) then s_step << 5 end
if (f_step[2] == 3 && f_step[3] == 3) then s_step << 6 end
if (f_step[2] == 3 && f_step[3] == 4) then s_step << 7 end
if (f_step[2] == 3 && f_step[3] == 5) then s_step << 2 end
if (f_step[2] == 3 && f_step[3] == 6) then s_step << 3 end
if (f_step[2] == 3 && f_step[3] == 7) then s_step << 4 end

if (f_step[2] == 4 && f_step[3] == 1) then s_step << 5 end
if (f_step[2] == 4 && f_step[3] == 2) then s_step << 6 end
if (f_step[2] == 4 && f_step[3] == 3) then s_step << 7 end
if (f_step[2] == 4 && f_step[3] == 4) then s_step << 1 end
if (f_step[2] == 4 && f_step[3] == 5) then s_step << 1 end
if (f_step[2] == 4 && f_step[3] == 6) then s_step << 2 end
if (f_step[2] == 4 && f_step[3] == 7) then s_step << 3 end

if (f_step[2] == 5 && f_step[3] == 1) then s_step << 6 end
if (f_step[2] == 5 && f_step[3] == 2) then s_step << 7 end
if (f_step[2] == 5 && f_step[3] == 3) then s_step << 2 end
if (f_step[2] == 5 && f_step[3] == 4) then s_step << 1 end
if (f_step[2] == 5 && f_step[3] == 5) then s_step << 5 end
if (f_step[2] == 5 && f_step[3] == 6) then s_step << 1 end
if (f_step[2] == 5 && f_step[3] == 7) then s_step << 2 end

if (f_step[2] == 6 && f_step[3] == 1) then s_step << 7 end
if (f_step[2] == 6 && f_step[3] == 2) then s_step << 4 end
if (f_step[2] == 6 && f_step[3] == 3) then s_step << 3 end
if (f_step[2] == 6 && f_step[3] == 4) then s_step << 2 end
if (f_step[2] == 6 && f_step[3] == 5) then s_step << 1 end
if (f_step[2] == 6 && f_step[3] == 6) then s_step << 3 end
if (f_step[2] == 6 && f_step[3] == 7) then s_step << 1 end

if (f_step[2] == 7 && f_step[3] == 1) then s_step << 6 end
if (f_step[2] == 7 && f_step[3] == 2) then s_step << 5 end
if (f_step[2] == 7 && f_step[3] == 3) then s_step << 4 end
if (f_step[2] == 7 && f_step[3] == 4) then s_step << 3 end
if (f_step[2] == 7 && f_step[3] == 5) then s_step << 2 end
if (f_step[2] == 7 && f_step[3] == 6) then s_step << 1 end
if (f_step[2] == 7 && f_step[3] == 7) then s_step << 7 end
# step 2 row 4
if (f_step[3] == 1 && f_step[4] == 1) then s_step << 2 end
if (f_step[3] == 1 && f_step[4] == 2) then s_step << 3 end
if (f_step[3] == 1 && f_step[4] == 3) then s_step << 4 end
if (f_step[3] == 1 && f_step[4] == 4) then s_step << 5 end
if (f_step[3] == 1 && f_step[4] == 5) then s_step << 6 end
if (f_step[3] == 1 && f_step[4] == 6) then s_step << 7 end
if (f_step[3] == 1 && f_step[4] == 7) then s_step << 6 end

if (f_step[3] == 2 && f_step[4] == 1) then s_step << 3 end
if (f_step[3] == 2 && f_step[4] == 2) then s_step << 4 end
if (f_step[3] == 2 && f_step[4] == 3) then s_step << 5 end
if (f_step[3] == 2 && f_step[4] == 4) then s_step << 6 end
if (f_step[3] == 2 && f_step[4] == 5) then s_step << 7 end
if (f_step[3] == 2 && f_step[4] == 6) then s_step << 4 end
if (f_step[3] == 2 && f_step[4] == 7) then s_step << 5 end

if (f_step[3] == 3 && f_step[4] == 1) then s_step << 4 end
if (f_step[3] == 3 && f_step[4] == 2) then s_step << 5 end
if (f_step[3] == 3 && f_step[4] == 3) then s_step << 6 end
if (f_step[3] == 3 && f_step[4] == 4) then s_step << 7 end
if (f_step[3] == 3 && f_step[4] == 5) then s_step << 2 end
if (f_step[3] == 3 && f_step[4] == 6) then s_step << 3 end
if (f_step[3] == 3 && f_step[4] == 7) then s_step << 4 end

if (f_step[3] == 4 && f_step[4] == 1) then s_step << 5 end
if (f_step[3] == 4 && f_step[4] == 2) then s_step << 6 end
if (f_step[3] == 4 && f_step[4] == 3) then s_step << 7 end
if (f_step[3] == 4 && f_step[4] == 4) then s_step << 1 end
if (f_step[3] == 4 && f_step[4] == 5) then s_step << 1 end
if (f_step[3] == 4 && f_step[4] == 6) then s_step << 2 end
if (f_step[3] == 4 && f_step[4] == 7) then s_step << 3 end

if (f_step[3] == 5 && f_step[4] == 1) then s_step << 6 end
if (f_step[3] == 5 && f_step[4] == 2) then s_step << 7 end
if (f_step[3] == 5 && f_step[4] == 3) then s_step << 2 end
if (f_step[3] == 5 && f_step[4] == 4) then s_step << 1 end
if (f_step[3] == 5 && f_step[4] == 5) then s_step << 5 end
if (f_step[3] == 5 && f_step[4] == 6) then s_step << 1 end
if (f_step[3] == 5 && f_step[4] == 7) then s_step << 2 end

if (f_step[3] == 6 && f_step[4] == 1) then s_step << 7 end
if (f_step[3] == 6 && f_step[4] == 2) then s_step << 4 end
if (f_step[3] == 6 && f_step[4] == 3) then s_step << 3 end
if (f_step[3] == 6 && f_step[4] == 4) then s_step << 2 end
if (f_step[3] == 6 && f_step[4] == 5) then s_step << 1 end
if (f_step[3] == 6 && f_step[4] == 6) then s_step << 3 end
if (f_step[3] == 6 && f_step[4] == 7) then s_step << 1 end

if (f_step[3] == 7 && f_step[4] == 1) then s_step << 6 end
if (f_step[3] == 7 && f_step[4] == 2) then s_step << 5 end
if (f_step[3] == 7 && f_step[4] == 3) then s_step << 4 end
if (f_step[3] == 7 && f_step[4] == 4) then s_step << 3 end
if (f_step[3] == 7 && f_step[4] == 5) then s_step << 2 end
if (f_step[3] == 7 && f_step[4] == 6) then s_step << 1 end
if (f_step[3] == 7 && f_step[4] == 7) then s_step << 7 end
# step 2 row 5
if (f_step[4] == 1 && f_step[5] == 1) then s_step << 2 end
if (f_step[4] == 1 && f_step[5] == 2) then s_step << 3 end
if (f_step[4] == 1 && f_step[5] == 3) then s_step << 4 end
if (f_step[4] == 1 && f_step[5] == 4) then s_step << 5 end
if (f_step[4] == 1 && f_step[5] == 5) then s_step << 6 end
if (f_step[4] == 1 && f_step[5] == 6) then s_step << 7 end
if (f_step[4] == 1 && f_step[5] == 7) then s_step << 6 end

if (f_step[4] == 2 && f_step[5] == 1) then s_step << 3 end
if (f_step[4] == 2 && f_step[5] == 2) then s_step << 4 end
if (f_step[4] == 2 && f_step[5] == 3) then s_step << 5 end
if (f_step[4] == 2 && f_step[5] == 4) then s_step << 6 end
if (f_step[4] == 2 && f_step[5] == 5) then s_step << 7 end
if (f_step[4] == 2 && f_step[5] == 6) then s_step << 4 end
if (f_step[4] == 2 && f_step[5] == 7) then s_step << 5 end

if (f_step[4] == 3 && f_step[5] == 1) then s_step << 4 end
if (f_step[4] == 3 && f_step[5] == 2) then s_step << 5 end
if (f_step[4] == 3 && f_step[5] == 3) then s_step << 6 end
if (f_step[4] == 3 && f_step[5] == 4) then s_step << 7 end
if (f_step[4] == 3 && f_step[5] == 5) then s_step << 2 end
if (f_step[4] == 3 && f_step[5] == 6) then s_step << 3 end
if (f_step[4] == 3 && f_step[5] == 7) then s_step << 4 end

if (f_step[4] == 4 && f_step[5] == 1) then s_step << 5 end
if (f_step[4] == 4 && f_step[5] == 2) then s_step << 6 end
if (f_step[4] == 4 && f_step[5] == 3) then s_step << 7 end
if (f_step[4] == 4 && f_step[5] == 4) then s_step << 1 end
if (f_step[4] == 4 && f_step[5] == 5) then s_step << 1 end
if (f_step[4] == 4 && f_step[5] == 6) then s_step << 2 end
if (f_step[4] == 4 && f_step[5] == 7) then s_step << 3 end

if (f_step[4] == 5 && f_step[5] == 1) then s_step << 6 end
if (f_step[4] == 5 && f_step[5] == 2) then s_step << 7 end
if (f_step[4] == 5 && f_step[5] == 3) then s_step << 2 end
if (f_step[4] == 5 && f_step[5] == 4) then s_step << 1 end
if (f_step[4] == 5 && f_step[5] == 5) then s_step << 5 end
if (f_step[4] == 5 && f_step[5] == 6) then s_step << 1 end
if (f_step[4] == 5 && f_step[5] == 7) then s_step << 2 end

if (f_step[4] == 6 && f_step[5] == 1) then s_step << 7 end
if (f_step[4] == 6 && f_step[5] == 2) then s_step << 4 end
if (f_step[4] == 6 && f_step[5] == 3) then s_step << 3 end
if (f_step[4] == 6 && f_step[5] == 4) then s_step << 2 end
if (f_step[4] == 6 && f_step[5] == 5) then s_step << 1 end
if (f_step[4] == 6 && f_step[5] == 6) then s_step << 3 end
if (f_step[4] == 6 && f_step[5] == 7) then s_step << 1 end

if (f_step[4] == 7 && f_step[5] == 1) then s_step << 6 end
if (f_step[4] == 7 && f_step[5] == 2) then s_step << 5 end
if (f_step[4] == 7 && f_step[5] == 3) then s_step << 4 end
if (f_step[4] == 7 && f_step[5] == 4) then s_step << 3 end
if (f_step[4] == 7 && f_step[5] == 5) then s_step << 2 end
if (f_step[4] == 7 && f_step[5] == 6) then s_step << 1 end
if (f_step[4] == 7 && f_step[5] == 7) then s_step << 7 end
# step 2 row 6
if (f_step[5] == 1 && f_step[6] == 1) then s_step << 2 end
if (f_step[5] == 1 && f_step[6] == 2) then s_step << 3 end
if (f_step[5] == 1 && f_step[6] == 3) then s_step << 4 end
if (f_step[5] == 1 && f_step[6] == 4) then s_step << 5 end
if (f_step[5] == 1 && f_step[6] == 5) then s_step << 6 end
if (f_step[5] == 1 && f_step[6] == 6) then s_step << 7 end
if (f_step[5] == 1 && f_step[6] == 7) then s_step << 6 end

if (f_step[5] == 2 && f_step[6] == 1) then s_step << 3 end
if (f_step[5] == 2 && f_step[6] == 2) then s_step << 4 end
if (f_step[5] == 2 && f_step[6] == 3) then s_step << 5 end
if (f_step[5] == 2 && f_step[6] == 4) then s_step << 6 end
if (f_step[5] == 2 && f_step[6] == 5) then s_step << 7 end
if (f_step[5] == 2 && f_step[6] == 6) then s_step << 4 end
if (f_step[5] == 2 && f_step[6] == 7) then s_step << 5 end

if (f_step[5] == 3 && f_step[6] == 1) then s_step << 4 end
if (f_step[5] == 3 && f_step[6] == 2) then s_step << 5 end
if (f_step[5] == 3 && f_step[6] == 3) then s_step << 6 end
if (f_step[5] == 3 && f_step[6] == 4) then s_step << 7 end
if (f_step[5] == 3 && f_step[6] == 5) then s_step << 2 end
if (f_step[5] == 3 && f_step[6] == 6) then s_step << 3 end
if (f_step[5] == 3 && f_step[6] == 7) then s_step << 4 end

if (f_step[5] == 4 && f_step[6] == 1) then s_step << 5 end
if (f_step[5] == 4 && f_step[6] == 2) then s_step << 6 end
if (f_step[5] == 4 && f_step[6] == 3) then s_step << 7 end
if (f_step[5] == 4 && f_step[6] == 4) then s_step << 1 end
if (f_step[5] == 4 && f_step[6] == 5) then s_step << 1 end
if (f_step[5] == 4 && f_step[6] == 6) then s_step << 2 end
if (f_step[5] == 4 && f_step[6] == 7) then s_step << 3 end

if (f_step[5] == 5 && f_step[6] == 1) then s_step << 6 end
if (f_step[5] == 5 && f_step[6] == 2) then s_step << 7 end
if (f_step[5] == 5 && f_step[6] == 3) then s_step << 2 end
if (f_step[5] == 5 && f_step[6] == 4) then s_step << 1 end
if (f_step[5] == 5 && f_step[6] == 5) then s_step << 5 end
if (f_step[5] == 5 && f_step[6] == 6) then s_step << 1 end
if (f_step[5] == 5 && f_step[6] == 7) then s_step << 2 end

if (f_step[5] == 6 && f_step[6] == 1) then s_step << 7 end
if (f_step[5] == 6 && f_step[6] == 2) then s_step << 4 end
if (f_step[5] == 6 && f_step[6] == 3) then s_step << 3 end
if (f_step[5] == 6 && f_step[6] == 4) then s_step << 2 end
if (f_step[5] == 6 && f_step[6] == 5) then s_step << 1 end
if (f_step[5] == 6 && f_step[6] == 6) then s_step << 3 end
if (f_step[5] == 6 && f_step[6] == 7) then s_step << 1 end

if (f_step[5] == 7 && f_step[6] == 1) then s_step << 6 end
if (f_step[5] == 7 && f_step[6] == 2) then s_step << 5 end
if (f_step[5] == 7 && f_step[6] == 3) then s_step << 4 end
if (f_step[5] == 7 && f_step[6] == 4) then s_step << 3 end
if (f_step[5] == 7 && f_step[6] == 5) then s_step << 2 end
if (f_step[5] == 7 && f_step[6] == 6) then s_step << 1 end
if (f_step[5] == 7 && f_step[6] == 7) then s_step << 7 end
# step 2 row 7
if (f_step[6] == 1 && f_step[7] == 1) then s_step << 2 end
if (f_step[6] == 1 && f_step[7] == 2) then s_step << 3 end
if (f_step[6] == 1 && f_step[7] == 3) then s_step << 4 end
if (f_step[6] == 1 && f_step[7] == 4) then s_step << 5 end
if (f_step[6] == 1 && f_step[7] == 5) then s_step << 6 end
if (f_step[6] == 1 && f_step[7] == 6) then s_step << 7 end
if (f_step[6] == 1 && f_step[7] == 7) then s_step << 6 end

if (f_step[6] == 2 && f_step[7] == 1) then s_step << 3 end
if (f_step[6] == 2 && f_step[7] == 2) then s_step << 4 end
if (f_step[6] == 2 && f_step[7] == 3) then s_step << 5 end
if (f_step[6] == 2 && f_step[7] == 4) then s_step << 6 end
if (f_step[6] == 2 && f_step[7] == 5) then s_step << 7 end
if (f_step[6] == 2 && f_step[7] == 6) then s_step << 4 end
if (f_step[6] == 2 && f_step[7] == 7) then s_step << 5 end

if (f_step[6] == 3 && f_step[7] == 1) then s_step << 4 end
if (f_step[6] == 3 && f_step[7] == 2) then s_step << 5 end
if (f_step[6] == 3 && f_step[7] == 3) then s_step << 6 end
if (f_step[6] == 3 && f_step[7] == 4) then s_step << 7 end
if (f_step[6] == 3 && f_step[7] == 5) then s_step << 2 end
if (f_step[6] == 3 && f_step[7] == 6) then s_step << 3 end
if (f_step[6] == 3 && f_step[7] == 7) then s_step << 4 end

if (f_step[6] == 4 && f_step[7] == 1) then s_step << 5 end
if (f_step[6] == 4 && f_step[7] == 2) then s_step << 6 end
if (f_step[6] == 4 && f_step[7] == 3) then s_step << 7 end
if (f_step[6] == 4 && f_step[7] == 4) then s_step << 1 end
if (f_step[6] == 4 && f_step[7] == 5) then s_step << 1 end
if (f_step[6] == 4 && f_step[7] == 6) then s_step << 2 end
if (f_step[6] == 4 && f_step[7] == 7) then s_step << 3 end

if (f_step[6] == 5 && f_step[7] == 1) then s_step << 6 end
if (f_step[6] == 5 && f_step[7] == 2) then s_step << 7 end
if (f_step[6] == 5 && f_step[7] == 3) then s_step << 2 end
if (f_step[6] == 5 && f_step[7] == 4) then s_step << 1 end
if (f_step[6] == 5 && f_step[7] == 5) then s_step << 5 end
if (f_step[6] == 5 && f_step[7] == 6) then s_step << 1 end
if (f_step[6] == 5 && f_step[7] == 7) then s_step << 2 end

if (f_step[6] == 6 && f_step[7] == 1) then s_step << 7 end
if (f_step[6] == 6 && f_step[7] == 2) then s_step << 4 end
if (f_step[6] == 6 && f_step[7] == 3) then s_step << 3 end
if (f_step[6] == 6 && f_step[7] == 4) then s_step << 2 end
if (f_step[6] == 6 && f_step[7] == 5) then s_step << 1 end
if (f_step[6] == 6 && f_step[7] == 6) then s_step << 3 end
if (f_step[6] == 6 && f_step[7] == 7) then s_step << 1 end

if (f_step[6] == 7 && f_step[7] == 1) then s_step << 6 end
if (f_step[6] == 7 && f_step[7] == 2) then s_step << 5 end
if (f_step[6] == 7 && f_step[7] == 3) then s_step << 4 end
if (f_step[6] == 7 && f_step[7] == 4) then s_step << 3 end
if (f_step[6] == 7 && f_step[7] == 5) then s_step << 2 end
if (f_step[6] == 7 && f_step[7] == 6) then s_step << 1 end
if (f_step[6] == 7 && f_step[7] == 7) then s_step << 7 end
# step 2 row 8
if (f_step[7] == 1 && f_step[8] == 1) then s_step << 2 end
if (f_step[7] == 1 && f_step[8] == 2) then s_step << 3 end
if (f_step[7] == 1 && f_step[8] == 3) then s_step << 4 end
if (f_step[7] == 1 && f_step[8] == 4) then s_step << 5 end
if (f_step[7] == 1 && f_step[8] == 5) then s_step << 6 end
if (f_step[7] == 1 && f_step[8] == 6) then s_step << 7 end
if (f_step[7] == 1 && f_step[8] == 7) then s_step << 6 end

if (f_step[7] == 2 && f_step[8] == 1) then s_step << 3 end
if (f_step[7] == 2 && f_step[8] == 2) then s_step << 4 end
if (f_step[7] == 2 && f_step[8] == 3) then s_step << 5 end
if (f_step[7] == 2 && f_step[8] == 4) then s_step << 6 end
if (f_step[7] == 2 && f_step[8] == 5) then s_step << 7 end
if (f_step[7] == 2 && f_step[8] == 6) then s_step << 4 end
if (f_step[7] == 2 && f_step[8] == 7) then s_step << 5 end

if (f_step[7] == 3 && f_step[8] == 1) then s_step << 4 end
if (f_step[7] == 3 && f_step[8] == 2) then s_step << 5 end
if (f_step[7] == 3 && f_step[8] == 3) then s_step << 6 end
if (f_step[7] == 3 && f_step[8] == 4) then s_step << 7 end
if (f_step[7] == 3 && f_step[8] == 5) then s_step << 2 end
if (f_step[7] == 3 && f_step[8] == 6) then s_step << 3 end
if (f_step[7] == 3 && f_step[8] == 7) then s_step << 4 end

if (f_step[7] == 4 && f_step[8] == 1) then s_step << 5 end
if (f_step[7] == 4 && f_step[8] == 2) then s_step << 6 end
if (f_step[7] == 4 && f_step[8] == 3) then s_step << 7 end
if (f_step[7] == 4 && f_step[8] == 4) then s_step << 1 end
if (f_step[7] == 4 && f_step[8] == 5) then s_step << 1 end
if (f_step[7] == 4 && f_step[8] == 6) then s_step << 2 end
if (f_step[7] == 4 && f_step[8] == 7) then s_step << 3 end

if (f_step[7] == 5 && f_step[8] == 1) then s_step << 6 end
if (f_step[7] == 5 && f_step[8] == 2) then s_step << 7 end
if (f_step[7] == 5 && f_step[8] == 3) then s_step << 2 end
if (f_step[7] == 5 && f_step[8] == 4) then s_step << 1 end
if (f_step[7] == 5 && f_step[8] == 5) then s_step << 5 end
if (f_step[7] == 5 && f_step[8] == 6) then s_step << 1 end
if (f_step[7] == 5 && f_step[8] == 7) then s_step << 2 end

if (f_step[7] == 6 && f_step[8] == 1) then s_step << 7 end
if (f_step[7] == 6 && f_step[8] == 2) then s_step << 4 end
if (f_step[7] == 6 && f_step[8] == 3) then s_step << 3 end
if (f_step[7] == 6 && f_step[8] == 4) then s_step << 2 end
if (f_step[7] == 6 && f_step[8] == 5) then s_step << 1 end
if (f_step[7] == 6 && f_step[8] == 6) then s_step << 3 end
if (f_step[7] == 6 && f_step[8] == 7) then s_step << 1 end

if (f_step[7] == 7 && f_step[8] == 1) then s_step << 6 end
if (f_step[7] == 7 && f_step[8] == 2) then s_step << 5 end
if (f_step[7] == 7 && f_step[8] == 3) then s_step << 4 end
if (f_step[7] == 7 && f_step[8] == 4) then s_step << 3 end
if (f_step[7] == 7 && f_step[8] == 5) then s_step << 2 end
if (f_step[7] == 7 && f_step[8] == 6) then s_step << 1 end
if (f_step[7] == 7 && f_step[8] == 7) then s_step << 7 end
# step 2 row 9
if (f_step[8] == 1 && f_step[9] == 1) then s_step << 2 end
if (f_step[8] == 1 && f_step[9] == 2) then s_step << 3 end
if (f_step[8] == 1 && f_step[9] == 3) then s_step << 4 end
if (f_step[8] == 1 && f_step[9] == 4) then s_step << 5 end
if (f_step[8] == 1 && f_step[9] == 5) then s_step << 6 end
if (f_step[8] == 1 && f_step[9] == 6) then s_step << 7 end
if (f_step[8] == 1 && f_step[9] == 7) then s_step << 6 end

if (f_step[8] == 2 && f_step[9] == 1) then s_step << 3 end
if (f_step[8] == 2 && f_step[9] == 2) then s_step << 4 end
if (f_step[8] == 2 && f_step[9] == 3) then s_step << 5 end
if (f_step[8] == 2 && f_step[9] == 4) then s_step << 6 end
if (f_step[8] == 2 && f_step[9] == 5) then s_step << 7 end
if (f_step[8] == 2 && f_step[9] == 6) then s_step << 4 end
if (f_step[8] == 2 && f_step[9] == 7) then s_step << 5 end

if (f_step[8] == 3 && f_step[9] == 1) then s_step << 4 end
if (f_step[8] == 3 && f_step[9] == 2) then s_step << 5 end
if (f_step[8] == 3 && f_step[9] == 3) then s_step << 6 end
if (f_step[8] == 3 && f_step[9] == 4) then s_step << 7 end
if (f_step[8] == 3 && f_step[9] == 5) then s_step << 2 end
if (f_step[8] == 3 && f_step[9] == 6) then s_step << 3 end
if (f_step[8] == 3 && f_step[9] == 7) then s_step << 4 end

if (f_step[8] == 4 && f_step[9] == 1) then s_step << 5 end
if (f_step[8] == 4 && f_step[9] == 2) then s_step << 6 end
if (f_step[8] == 4 && f_step[9] == 3) then s_step << 7 end
if (f_step[8] == 4 && f_step[9] == 4) then s_step << 1 end
if (f_step[8] == 4 && f_step[9] == 5) then s_step << 1 end
if (f_step[8] == 4 && f_step[9] == 6) then s_step << 2 end
if (f_step[8] == 4 && f_step[9] == 7) then s_step << 3 end

if (f_step[8] == 5 && f_step[9] == 1) then s_step << 6 end
if (f_step[8] == 5 && f_step[9] == 2) then s_step << 7 end
if (f_step[8] == 5 && f_step[9] == 3) then s_step << 2 end
if (f_step[8] == 5 && f_step[9] == 4) then s_step << 1 end
if (f_step[8] == 5 && f_step[9] == 5) then s_step << 5 end
if (f_step[8] == 5 && f_step[9] == 6) then s_step << 1 end
if (f_step[8] == 5 && f_step[9] == 7) then s_step << 2 end

if (f_step[8] == 6 && f_step[9] == 1) then s_step << 7 end
if (f_step[8] == 6 && f_step[9] == 2) then s_step << 4 end
if (f_step[8] == 6 && f_step[9] == 3) then s_step << 3 end
if (f_step[8] == 6 && f_step[9] == 4) then s_step << 2 end
if (f_step[8] == 6 && f_step[9] == 5) then s_step << 1 end
if (f_step[8] == 6 && f_step[9] == 6) then s_step << 3 end
if (f_step[8] == 6 && f_step[9] == 7) then s_step << 1 end

if (f_step[8] == 7 && f_step[9] == 1) then s_step << 6 end
if (f_step[8] == 7 && f_step[9] == 2) then s_step << 5 end
if (f_step[8] == 7 && f_step[9] == 3) then s_step << 4 end
if (f_step[8] == 7 && f_step[9] == 4) then s_step << 3 end
if (f_step[8] == 7 && f_step[9] == 5) then s_step << 2 end
if (f_step[8] == 7 && f_step[9] == 6) then s_step << 1 end
if (f_step[8] == 7 && f_step[9] == 7) then s_step << 7 end


puts "------------------------------"
puts "All Spins :", "#{spins}"
puts "------------------------------"
puts "------------------------------"
puts "First step teams :", "#{f_step}"
puts "------------------------------"
puts "------------------------------"
puts "Prediction is :",
if s_step.any?(teamA) then puts teamA
elsif s_step.any?(teamB) then puts "#{teamB}" 
elsif s_step.any?(teamC) then puts "#{teamC}" 
elsif s_step.any?(teamD) then puts "#{teamD}" 
elsif s_step.any?(teamE) then puts "#{teamE}" 
elsif s_step.any?(teamF) then puts "#{teamF}" 
elsif s_step.any?(teamG) then puts "#{teamG}" 
end
puts "#{s_step.pop}"
puts "------------------------------"

    if  bek > 24 || bek < 0 then
         puts '0 -- 24'
        
    elsif teamA.include? (bek) then
         f_step << 1

    elsif teamB.include?(bek) then
         f_step << 2

    elsif teamC.include?(bek) then
         f_step << 3

    elsif teamD.include?(bek) then
         f_step << 4

    elsif teamE.include?(bek) then
         f_step << 5

    elsif teamF.include?(bek) then
         f_step << 6

    elsif teamG.include?(bek) then
         f_step << 7

    end

end


