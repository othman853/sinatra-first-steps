require 'sinatra'

class Application < Sinatra::Base

  get '/' do
    'Hello'
  end

end
