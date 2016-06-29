class RubyRacer
  attr_reader :players, :die, :length
  attr_accessor :position

  def initialize(players, die, length = 30)
    @players = players
    @die = die
    @length = length

    @position = {}
    players.each do |player|
      @position[player] = 0
    end
  end

  # Returns +true+ if one of the players has reached
  # the finish line, +false+ otherwise
  def finished?
    #positions = {:a => 25, :b => 30}
    @position.each do |pl, pos|
      if pos >= @length
        return true
      else
        return false
      end
    end
  end

  # Returns the winner if there is one, +nil+ otherwise
  def winner
    @position.each do |pl, pos|
      if pos >= @length
        pl
      end
    end
  end

  # Rolls the die and advances +player+ accordingly
  def advance_player(player)
    @position[player] += @die.roll
  end

  # Returns the current state of the game as a string
  # that can be printed on the command line.
  # The board should have the same dimensions each time.
  def board_visualization
    @players.each do |racer|
      in_front = @length - @position[racer]
      # track = "|" * 30
      # p track.insert(@position[racer, racer.to_s)
      p " |" * @position[racer] + racer.to_s + "|" + " |" * in_front
    end
  end
end
