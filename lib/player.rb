class Player
  attr_reader :name
  attr_accessor :hp
  Base_Health = 100

  def initialize(name)
    @name = name
    @hp = Base_Health
  end

  def attack(name)
    name.receive_damage
  end

   def receive_damage
     @hp -= 10
   end
end
