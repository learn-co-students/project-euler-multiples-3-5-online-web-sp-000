class Multiples

    def initialize(limit)
        @limit = limit
    end

    def collect_multiples
        arr = [3, 5]
        result = []
    
        for num in arr    
            int = 1
            while (num * int) < @limit
                result.push(num * int)
                int += 1
            end
        end
        result.uniq.sort
    end

    def sum_multiples
        collect_multiples.sum
    end

end

# FOR TESTS
# multiples = Multiples.new(10)
# puts multiples.collect_multiples.inspect
# puts multiples.sum_multiples.inspect