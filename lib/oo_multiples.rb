# Enter your object-oriented solution here!
class Multiples
    attr_accessor :limit

    def initialize(limit)
        self.limit = limit
    end

    def collect_multiples
        result = []
        counter = self.limit - 1
        until counter === 0
            if counter % 3 === 0 || counter % 5 === 0
                result.unshift(counter)
            end
            counter -= 1
        end
        result
    end

    def sum_multiples
        collect_multiples.reduce(:+)
    end
end