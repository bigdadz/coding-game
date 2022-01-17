# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

n = gets.to_i
l = gets.to_i

target_ij = []
all = []
ans_count = 0
n.times do |i|
    inputs = gets.split(" ")
    all << inputs
    for j in 0..(n-1)
        cell = inputs[j]
        if cell == "C"
            target_ij << [i, j]
        end
    end
end

all.each_with_index do |row, i|
    row.each_with_index do |cell, j|
        count_zero_point = 0
        target_ij.each do |target|
            if [(i-target[0]).abs, (j-target[1]).abs].max >= l
                count_zero_point += 1
            end
        end
        if count_zero_point == target_ij.size()
            ans_count += 1
        end
    end
end

puts ans_count