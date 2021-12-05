require 'debug'

# input = 'sample.txt'
input = 'input.txt'

inputs = File.new(input).readlines.map do |line|
  line.split(' ')
end

position = 0
depth = 0
aim = 0

inputs.each do |instruction|
  direction = instruction.first.to_sym
  speed = instruction.last.to_i

  case direction
  when :forward
    position += speed
    depth += aim * speed
  when :up
    aim -= speed
  when :down
    aim += speed
  end
end

puts position * depth
