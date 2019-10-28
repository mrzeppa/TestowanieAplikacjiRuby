require 'forwardable'

class Allergies < Struct.new(:score)
  ALLERGENS = %w(eggs peanuts shellfish strawberries tomatoes chocolate pollen cats).freeze

  def list
    ALLERGENS.select.with_index { |_, i| score & 2.pow(i) > 0 }
  end

  extend Forwardable
  def_delegator :list, :include?, :allergic_to?
end