unless 0.respond_to?(:positive?)
  class Fixnum # rubocop:disable Lint/UnifiedInteger
    def positive?
      self > 0 # rubocop:disable Style/NumericPredicate
    end
  end
end
