module GameFighter
  class Game

    def players
      @players ||= GameFighter::Players.new
    end

  end
end