module ZombieBot
  module Commands
    class Game < SlackRubyBot::Commands::Base
      command 'test' do |client, data, _match|
        client.say(channel: data.channel, text: 'Braiiins ...')
      end
 
      command 'who am i' do |client, data, _match|
        client.say(channel: data.channel, text: "You are <@#{data.user}>")
      end
    end
  end
end

