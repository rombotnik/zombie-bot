module ZombieBot
  module Commands
    class Game < SlackRubyBot::Commands::Base
      command 'new game' do |client, data, _match|
        client.say(channel: data.channel, text: 'Braiiins ...')
      end
    end
  end
end

