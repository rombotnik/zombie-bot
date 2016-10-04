module ZombieBot
  class Game
    def initialize(leader)
      @leader = leader
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

    def leader
      "<@" + @leader + ">"
    end

    def is_leader?(user_id)
      user_id == @leader
    end
  end
end

