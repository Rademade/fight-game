module GameFighter
  class Players
    include Enumerable

    def each(&block)
      @players.each(&block)
    end

    protected

    def initialize(players = [])
      @players = players
    end

  end
end