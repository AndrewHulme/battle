require 'game'
require 'player'

describe Game do
  # let(:player_1) { double :player }
  # let(:player_2) { double :player }

  let(:ed) {Player.new('Ed')}
  let(:andrew) {Player.new('Andrew')}

  it 'reduces player 2s hit points' do
    expect { subject.attack(ed) }.to change { ed.hp }.by(-10)
  end
end
