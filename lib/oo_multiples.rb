# Enter your object-oriented solution here!

class Multiples 
  def initialize(limit)
    @limit = limit
    if @limit.nil?
      raise ArgumentError.new("no limit parameter passed in")
    end
  end

  private 
  
  def self.is_multiple?(num)
    if num % 3 == 0
      true
    elsif num % 5 == 0
      true
    else 
      false
    end 
  end
  
  def self.collect_multiples(limit)
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

  def self.sum_multiples(limit)
    array = collect_multiples(limit)
    array.reduce(0) { |accu, num| accu + num }
  end

end