require 'sinatra'
require 'haml'


##nav = {"index" => true,"about" => false, "cv" => false }

get '/' do
  haml :index, :locals => {:active => "index"}
end

get '/about' do
  haml :about, :locals => {:active => "about"}
end

get '/cv' do
  haml :cv, :locals => {:active => "cv"}
end
