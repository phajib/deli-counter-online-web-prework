require 'benchmark'
puts Benchmark.measure { 10_000_000.times { Object.new } }

def line(array)
  x = 0
  if array.length == 0
    puts "The line is currently empty."
  else
    array.map do |people| x+=1
      puts "The line is currently: #{x}. #{people}"
    end
  end
end
