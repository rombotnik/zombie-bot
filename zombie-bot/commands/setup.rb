module ZombieBot
  module Commands
    class Setup < SlackRubyBot::Commands::Base
      command 'new game' do |client, data, _match|
        @game ||= ZombieBot::Game.new
        @game.add_player(data.user)

        message = "Starting a new game! Say *join* to join. Current player list: #{@game.player_names}"
        client.say(channel: data.channel, text: message)
      end

      command 'join' do |client, data, _match|
        @game ||= ZombieBot::Game.new
        @game.add_player(data.user)
        
        message = "You're in, <@#{data.user}>! Current player list: #{@game.player_names}"
        client.say(channel: data.channel, text: message)
      end
    end
  end
end

