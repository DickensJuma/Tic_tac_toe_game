# frozen_string_literal: true

# rubocop:disbale Style/Documentation, Lint/RedundantCopEnableDirective
class Player
  attr_reader :player_name, :symbol
  def initialize(player_name, symbol)
    @player_name = player_name
    @symbol = symbol
  end
end
# rubocop:enable
