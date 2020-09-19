class Multiples

  def initialize(limit)
    @limit = limit
  end

  def collect_multiples
    # collection_three = (3..@limit-1).step(3).to_a
    # collection_five = (5..@limit-1).step(5).to_a
    # collection_final = []
    #
    # while (!collection_three.empty? && !collection_five.empty?)
    #   if collection_three[0] == collection_five[0]
    #     collection_final.push(collection_three.shift)
    #     collection_five.shift
    #   elsif collection_three[0] < collection_five[0]
    #     collection_final.push(collection_three.shift)
    #   else
    #     collection_final.push(collection_five.shift)
    #   end
    # end
    #
    # return collection_final + collection_three

    return (1...@limit).to_a.reject {|num| num unless num % 3 == 0 || num % 5 == 0}
  end

  def sum_multiples
    return collect_multiples.reduce(0, :+)
  end
end
