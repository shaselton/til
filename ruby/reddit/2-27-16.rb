#!/usr/bin/env ruby
# https://www.reddit.com/r/dailyprogrammer/comments/46zm8m/20160222_challenge_255_easy_playing_with_light/
 
total_lights = 0
actions = []

File.open("2-27-16.txt", "r") do |f|
  f.each_with_index do |line, index|
    if index == 0
      total_lights = line
    else
      actions << line.split(' ').map(&:to_i)
    end
  end
end

total_lights = Array.new(total_lights.to_i, false)
puts total_lights.size
product = actions.each_with_object(total_lights) { |action, lights| print '.'; min, max = action.minmax; lights[min..max] = lights[min..max].map { |light| light = !light } }.select { |light| light }

puts product.size
