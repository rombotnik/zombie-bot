module ZombieBot
  class Game
    def initialize
      @players = Set.new
    end

    def add_player(user_id)
      @players.add user_id
    end

    def remove_player(user_id)
      @players.delete user_id
    end

    def player_names
      @players.map { |player| "<@" + player + ">" }.join(', ')
    end
  end
end

