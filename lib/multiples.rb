# Enter your procedural solution here!
def collect_multiples(limit)
   array = []
   i = 1
   until i == limit do
      times3 = 3*i 
      times5 = 5*i
      if times3 < limit && !array.include?(times3)
        array.push(times3)
        # puts times3
      end
      if times5 < limit
        array.push(times5)
      end
     i+=1
   end
   #array.reduce(0){ |i, t| i + t }
   array.sort()
end

def sum_multiples(limit)
  array = collect_multiples(limit)
  array.reduce(0){|i, t| i + t }
end