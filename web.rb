require 'sinatra'
require 'haml'
require 'sass'

configure do
  set :haml, {:format => :html5}
end

get '/stylesheets/style.css' do
  header 'Content-Type' => "text/css; charset=utf-8"
  sass :style
end

get "/" do
  haml :index, :layout => :layout
end