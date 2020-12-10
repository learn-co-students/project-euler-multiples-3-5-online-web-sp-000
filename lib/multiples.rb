# Enter your procedural solution here!
def collect_multiples(num)
    result = []
    counter = 1

    until counter === num
        if counter % 3 === 0 || counter % 5 === 0
            result << counter
        end
        counter += 1
    end

    result
end

def sum_multiples(num)
    (collect_multiples(num)).reduce(:+)
end