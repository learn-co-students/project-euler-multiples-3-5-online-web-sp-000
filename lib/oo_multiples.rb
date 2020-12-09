# Enter your object-oriented solution here!
class Multiples
  def initialize(limit)
    @limit = limit
  end

  def collect_multiples
    (1..@limit - 1).to_a.select {|num| (num % 3 === 0) || (num % 5 === 0)}
  end
  
  def sum_multiples
    self.collect_multiples.sum
  end

end