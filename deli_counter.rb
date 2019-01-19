require 'benchmark'
puts Benchmark.measure { 10_000_000.times { Object.new } }

def line(array)
  if array.length == 0
    puts "The line is currently empty."
  else
    line_txt = "The line is currently:"
    array.each_with_index do |people, int|
      line_txt += " #{int.to_i + 1}. #{people}"
    end
    puts "#{line_txt}"
  end
end

def take_a_number(array, person)
  array.push(person)
  puts "Welcome, #{person}. You are number #{array.length} in line."
end

def now_serving(array)
  if array.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{array.shift}."
  end
end
