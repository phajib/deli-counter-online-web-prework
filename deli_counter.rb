require 'benchmark'
puts Benchmark.measure { 10_000_000.times { Object.new } }

def line(array)
  x = 1
  if array.length == 0
    puts "The line is currently empty."
  else
    line_txt = "The line is currently: "
    array.each do |people, int|
      line_txt += "#{int.to_i + 1}. #{people}"
    end
    puts "#{line_txt}"
  end
end
