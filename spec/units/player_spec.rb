require 'player'

describe Player do
  it "#name" do
    andrew = Player.new("Andrew")
    expect(andrew.name).to eq "Andrew"
  end
end
