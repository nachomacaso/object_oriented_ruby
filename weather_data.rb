input = File.open('weather.dat', File::RDONLY){|f| f.read }
array = input.lines.map(&:split)

rows = []
days = []
high_temp = []
low_temp = []

array.each do |row|
  rows << row
  rows.each do |index|
    days << index[0]
    high_temp << index [1]
    low_temp << index [2]
  end
end


days[-31..-2]
truncated_high = high_temp[-31..-2]
truncated_low = low_temp[-31..-2]

smallest = []
30.times do |index|
  smallest << truncated_high[index].to_i - truncated_low[index].to_i
end

p smallest
p day_with_smallest_spread = smallest.index(smallest.min)

puts "The day with the smallest temp spread is #{day_with_smallest_spread}."
