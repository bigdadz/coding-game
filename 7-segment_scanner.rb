# https://www.codingame.com/training/easy/7-segment-scanner
# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

line_1 = gets.chomp
line_2 = gets.chomp
line_3 = gets.chomp

hash_1 = {
  " _ " => [0, 2, 3, 5, 6, 7, 8, 9],
  "   " => [1, 4],
}
hash_2 = {
  "| |" => [0],
  "  |" => [1, 7],
  " _|" => [2, 3],
  "|_|" => [4, 8, 9],
  "|_ " => [5, 6],
}
hash_3 = {
  "|_|" => [0, 6, 8],
  "  |" => [1, 4, 7],
  "|_ " => [2],
  " _|" => [3, 5, 9],
}
num_1 = []
line_1.chars.each_slice(3) do |l|
  num_1 << hash_1[l.join]
end
num_2 = []
line_2.chars.each_slice(3) do |l|
  num_2 << hash_2[l.join]
end
num_3 = []
line_3.chars.each_slice(3) do |l|
  num_3 << hash_3[l.join]
end

aws = []
num_1.size.times do |i|
  aws << (num_1[i] & num_2[i] & num_3[i]).first
end
puts aws.join