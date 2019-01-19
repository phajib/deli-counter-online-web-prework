require 'benchmark'
puts Benchmark.measure { 10_000_000.times { Object.new } }

def line(array)
  x = 1
  if array.length == 0
    puts "The line is currently empty."
  else
    #puts "The line is currently: "
    array.map do |people|
      puts "#{x}. #{people}"
      x+=1
    end
  end
end
