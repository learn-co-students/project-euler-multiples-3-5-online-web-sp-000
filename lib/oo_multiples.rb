# Enter your object-oriented solution here!

class Multiples
    attr_accessor :limit

    def initialize(limit)
        @limit = limit
    end

    def collect_multiples
        collected_multiples = []

        (1..self.limit - 1).map do |number|
            if number%3 === 0 || number%5 === 0
                collected_multiples.push(number)
            end
        end

        return collected_multiples
    end

    def sum_multiples
        collect_multiples.sum
    end

end