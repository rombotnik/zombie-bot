require 'spec_helper'

describe ZombieBot::Commands::Game do
  def app
    ZombieBot::Bot.instance
  end

  it 'responds to new game' do
    expect(message: "#{SlackRubyBot.config.user} test", channel: 'channel').to respond_with_slack_message('Braiiins ...')
  end

end
