# Enter your procedural solution here!
def collect_multiples(limit)
    result = []
    counter = limit - 1
    until counter === 0
        if counter % 3 === 0 || counter % 5 === 0
            result.unshift(counter)
        end
        counter -= 1
    end
    result
end

def sum_multiples(limit)
    array = collect_multiples(limit)
    array.reduce(:+)
end