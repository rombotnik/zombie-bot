module ZombieBot
  module Commands
    class Setup < SlackRubyBot::Commands::Base
      command 'new game' do |client, data, _match|
        if !@game
          @game = ZombieBot::Game.new(data.user)
          @game.add_player(data.user)

          message = "Starting a new game! Say *join* to join. #{@game.leader}, say *continue* when everyone is ready."
          client.say(channel: data.channel, text: message)
        else
          message = "There's already a game running right now. Say *join* to join!"
          client.say(channel: data.channel, text: message)
        end
      end

      command 'join' do |client, data, _match|
        if @game
          @game.add_player(data.user)
          message = "You're in, <@#{data.user}>! Current player list: #{@game.player_names}"
          client.say(channel: data.channel, text: message)
        else
          message = "There's no game running right now. Say *new game* to start a new game!"
          client.say(channel: data.channel, text: message)
        end
      end

      command 'leave' do |client, data, _match|
        if @game
          @game.remove_player(data.user)
          message = "Bye, <@#{data.user}>! Current player list: #{@game.player_names}"
          client.say(channel: data.channel, text: message)
        end
      end

      command 'continue' do |client, data, _match|
        if @game && @game.is_leader?(data.user)
          message = "Everyone's here! Time to get started. Current player list: #{@game.player_names}"
          client.say(channel: data.channel, text: message)
        elsif @game
          message = "Only <@#{game.leader}> can continue the game. Sorry!"
          client.say(channel: data.channel, text: message)
        else
          message = "There's no game running right now. Say *new game* to start a new game!"
          client.say(channel: data.channel, text: message)
        end
      end

    end
  end
end

