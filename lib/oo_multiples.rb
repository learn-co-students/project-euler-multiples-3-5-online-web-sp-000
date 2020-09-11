# Enter your object-oriented solution here!
class Multiples
  attr_accessor :limit
  def initialize(limit)
    @limit = limit
  end
  
  def collect_multiples
    array = []
    i = 1 
    until i == self.limit
      times3 = i*3 
      times5 = i*5 
      if times3 < self.limit && !array.include?(times3)
        array.push(times3)
      end
      if times5 < self.limit 
        array.push(times5)
      end
      i+=1
    end
    array.sort()
  end
  
  def sum_multiples
    array = self.collect_multiples 
    array.reduce(0){|item, total| item+ total}
  end
  
end