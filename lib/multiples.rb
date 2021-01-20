# Enter your procedural solution here!

require 'pry'

def is_multiple?(num)
  if num % 3 == 0
    true
  elsif num % 5 == 0
    true
  else 
    false
  end 
end

def collect_multiples(limit)
  array = []
  i = 1
  while i < limit
    if is_multiple?(i)
      array.push(i)
    end
    i += 1
  end
  array
end

def sum_multiples(limit)
  array = collect_multiples(limit)
  array.reduce(0) { |accu, num| accu + num }
end

