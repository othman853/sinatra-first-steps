require 'sinatra'

class Application < Sinatra::Base

  get '/' do
    'Hello'
  end

  get '/rack-format' do
    [200, {"Content-Type" => "text/plain"}, ["I am being delivered in the rack format!"]]
  end

  get '/rack-format-2' do
    [200, ["I am also being delivered in the rack format!"]]
  end

  get '/erb' do
    erb :index, :format => :html5
  end

end
