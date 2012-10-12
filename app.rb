require 'sinatra'
require 'haml'

nav = {"home" => true,"about" => false, "cv" => false }

get '/' do
  nav.each do |key, value|
    nav[key] = false
  end
  nav["home"]=true
  haml :index, :locals => {:nav => nav}
end

get '/home' do
  nav.each do |key, value|
    nav[key] = false
  end
  nav["home"]=true
  haml :index, :locals => {:nav => nav}
end

get '/about' do
  nav.each do |key, value|
    nav[key] = false
  end
  nav["about"]=true
  haml :about, :locals => {:nav => nav}
end

get '/cv' do
  nav.each do |key, value|
    nav[key] = false
  end
  nav["cv"]=true
  haml :cv, :locals => {:nav => nav}
end
