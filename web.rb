require 'sinatra/base'

module ZombieBot
  class Web < Sinatra::Base
    get '/' do
      'Braiiiins!'
    end
  end
end

