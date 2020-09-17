# Enter your procedural solution here!

def collect_multiples(limit)
  target = []
  i = 1
  loop do
    target << (i) if (i % 3 == 0) || (i % 5 == 0)
    break if (i += 1) == limit
  end
  target
end

def sum_multiples(limit)
  collect_multiples(limit).sum
end
