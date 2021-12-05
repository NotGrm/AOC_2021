require 'debug'

input = 'input.txt'
inputs = File.new(input).readlines.map(&:to_i)

values = inputs.each_cons(3).map do |slice|
  slice.sum
end

increased_count = values.each_cons(2).filter do |first, last|
  last > first
end.count

puts increased_count
