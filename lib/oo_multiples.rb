# Enter your object-oriented solution here!
class Multiples
    attr_reader :num

    def initialize(num)
        @num = num
    end

    def collect_multiples
        result = []
        counter = 1
    
        until counter === @num
            if counter % 3 === 0 || counter % 5 === 0
                result << counter
            end
            counter += 1
        end
    
        result
    end
    
    def sum_multiples
        (collect_multiples).reduce(:+)
    end
end