class CheckOut
   def initialize(rules)
      @rules = rules
      @items = []
   end

   def scan(item)
      @items << item
   end

   def total
     @items
      .each_with_object(Hash.new(0)) { |it, acc| acc[it] += 1 }
      .reduce(0) do |total, (name, amount)|
        total += @rules[name].call(amount)
        total
      end
   end
end
