class Change

    class ImpossibleCombinationError < ArgumentError; end
    class NegativeTargetError < ArgumentError; end
    
    def self.generate(currencies, target)
        raise NegativeTargetError.new if target < 0
        
        table = []
        table[0] = []

        currencies.sort.reverse.uniq.each do |coin|
          (coin..target).each do |sub_target|
            sub_problem = table[sub_target - coin]

            next if sub_problem.nil? ||
              table[sub_target] &&
              table[sub_target].size <= sub_problem.size + 1

            table[sub_target] = [coin] + sub_problem
          end
        end

        raise ImpossibleCombinationError.new unless table[target]
        table[target]
    end    
end