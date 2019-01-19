require 'benchmark'
puts Benchmark.measure { 10_000_000.times { Object.new } }

def line(array)
  x = 1
  if array.length == 0
    puts "The line is currently empty."
  else
    array.map do |people|
      puts "The line is currently: #{x}. #{people}"
      x+=1
    end
  end
end
