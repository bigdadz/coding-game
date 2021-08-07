n = gets.to_i
strength_list = []
n.times do
    pi = gets.to_i
    strength_list << pi
end
min_closest_strengths = 99999999

strength_list = strength_list.sort
strength_list[0...strength_list.size - 1].each_with_index do |str, i|
    min_closest_strengths = [strength_list[i+1] - str, min_closest_strengths].min
end
puts min_closest_strengths