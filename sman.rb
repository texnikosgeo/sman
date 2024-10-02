#!/usr/bin/ruby

#spin manager

group_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 0]
groups =  group_array.group_by.with_index{|_, i| i % 6}.values

#A = 1, 7, 13, 19
#B = 2, 8, 14, 20
#C = 3, 9, 15, 21
#D = 4, 10, 16, 22
#E = 5, 11, 17, 23
#F = 6, 12, 18, 24
#G = 0

sesion_manager = true
balancer = true
predictor = true
limiter = true
balance = true
loss_limit = false

puts 'give unit'
unit_first_bet = gets.to_f
puts 'set target'
final_target = gets.to_f

puts 'groups are:' , groups

