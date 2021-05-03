def collect_multiples(limit)
    arr = [3, 5]
    result = []

    for num in arr    
        int = 1
        while (num * int) < limit
            result.push(num * int)
            int += 1
        end
    end
    result.uniq.sort
end

def sum_multiples(limit)
    collect_multiples(limit).sum
end

# puts collect_multiples(100).inspect