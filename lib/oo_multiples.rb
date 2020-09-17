# Enter your object-oriented solution here!
class Multiples
  def initialize(limit)
    @limit = limit
  end

  def collect_multiples
    target = []
    i = 1
    loop do
      target << (i) if (i % 3 == 0) || (i % 5 == 0)
      break if (i += 1) == @limit
    end
    target
  end

  def sum_multiples
    collect_multiples.sum
  end
end
