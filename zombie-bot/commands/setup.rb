module ZombieBot
  module Commands
    class Setup < SlackRubyBot::Commands::Base
      command 'new game' do |client, data, _match|
        @player_list ||= Set.new
        @player_list << data.user
        player_list = @player_list.map { |player| "<@" + player + ">" }.join(', ')
        message = "Starting a new game! Say *join* to join. Current player list: #{player_list}"
        client.say(channel: data.channel, text: message)
      end

      command 'join' do |client, data, _match|
        @player_list ||= Set.new
        @player_list << data.user
        player_list = @player_list.map { |player| "<@" + player + ">" }.join(', ')
        message = "You're in, <@#{data.user}>! Current player list: #{player_list}"
        client.say(channel: data.channel, text: message)
      end
    end
  end
end

