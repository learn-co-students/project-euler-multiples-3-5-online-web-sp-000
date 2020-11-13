# Enter your procedural solution here!

def collect_multiples(limit)
    collectedNumbers = [] 

    (1..limit - 1).each do |number| 
        if number%3 === 0 || number%5 === 0 
            collectedNumbers.push(number)
        end
    end

    collectedNumbers;
end

def sum_multiples(limit)
    collect_multiples(limit).sum
end