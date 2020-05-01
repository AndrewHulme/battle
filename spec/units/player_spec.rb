require 'player'

describe Player do
  let(:ed) {Player.new('Ed')}
  let(:andrew) {Player.new('Andrew')}

  it "#name" do
    expect(andrew.name).to eq "Andrew"
  end

  it 'shows the player hit points' do
    expect(ed.hp).to eq described_class::Base_Health
  end

  it 'reduces player 2s hit points' do
    expect { andrew.attack(ed) }.to change { ed.hp }.by(-10)
  end

  it 'responds to receive_damage' do
    expect(andrew).to respond_to(:receive_damage)
  end
end
