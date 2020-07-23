# frozen_string_literal: true

require_relative '../lib/player.rb'

describe Player do
  let(:player) { Player.new('arafat', 'X') }
  let(:name) { player.player_name }
  let(:symbol) { player.symbol }

  context '#player\'s name' do
    it 'returns the first argument as string object which is the player\'s name.' do
      expect(name).to eql('arafat')
    end
  end

  context '#player\'s symbol' do
    it 'returns X as second argument which is the player\'s symbol.' do
      expect(symbol).to eql('X')
    end
  end
end
