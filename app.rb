require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    input = PigLatinizer.new

    @pig_latined_text = input.piglatinize(params[:user_phrase])

    erb :pig_latined
  end
end
