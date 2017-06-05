katz_deli = []

def line(katz_deli)
    current_line = []
    if katz_deli.size > 0
      katz_deli.each_with_index do |name, index|
        current_line.push("#{index + 1}. #{name}")
      end
      puts "The line is currently: #{current_line.join(' ')}"
    else
      puts "The line is currently empty."
    end
end

def take_a_number(katz_deli, name)
  n = katz_deli.length
  if katz_deli.size > 0
    katz_deli.push(name)
    puts "Welcome, #{name}. You are number #{n + 1} in line."
  elsif katz_deli.size == 0
    katz_deli.push(name)
    puts "Welcome, #{name}. You are number #{n + 1} in line."
  end
end

def now_serving(katz_deli)
  if katz_deli.size == 0
    puts "There is nobody waiting to be served!"
  elsif katz_deli.size > 0
    puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift
  end
end
