class Player

  attr_accessor :name, :lives, :player_content
  # player_content = []
  def initialize(name)
    @name = name
    @lives = 3
    @player_content = [@name, @lives]
  end

  def name
    pp "player is #{@name}"
  end

  def content
    pp player_content
  end

  def lives
    pp "#{@name} has #{@lives} lives"
  end

end