 
require_relative '../lib/message.rb'

describe Message do
  let(:message) { Message.new }

  context '#give_msg' do
    it 'returns the string version of the given parameter' do
      expect(message.give_msg(45_215)).to eql('45215')
    end
  end

  context '#first_player' do
    let(:msg) { 'arafat has randomly been selected as the first player.' }

    it 'returns a hard coded message with the value of the argument given' do
      expect(message.first_player('arafat')).to eql(msg)
    end
  end

  context '#move_msg_to' do
    it 'returns a hard coded message with the value of the argument given' do
      expect(message.move_msg_to('arafat')).to eql('arafat, make your move')
    end
  end
  context '#invalid_move_msg' do
    it 'returns a hard coded message from the instance method' do
      expect(message.invalid_move_msg).to eql('That\'s an invalid move, please select another move.')
    end
  end

  context '#win_msg' do
    it 'returns a congratulation message to the player' do
      expect(message.win_msg('arafat')).to eql('Congrats! arafat. You\'ve won this game.')
    end
  end

  context '#draw_msg' do
    it 'returns a draw message to the players' do
      expect(message.draw_msg).to eql('It\'s a DRAW.')
    end
  end
end