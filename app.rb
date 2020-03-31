require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        thing = PigLatinizer.new
        @result = thing.piglatinize(params["user_phrase"])
        erb :piglatinize
    end
end
