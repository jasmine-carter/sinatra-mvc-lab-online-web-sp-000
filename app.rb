require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/' do
    #do some things with the PigLatinizer class and throw results in pig_latined erb
    text_from_user = params[:user_phrase]
    @pig_latined_text = PigLatinizer.new(params[:user_phrase])
    erb :pig_latined
  end

end
