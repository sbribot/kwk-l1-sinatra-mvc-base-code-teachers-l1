require 'bundler'
Bundler.require

require 'model.rb'

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  
  post '/' do
    @x = params["firstnumber"].to_i
    @y = params["lastnumber"].to_i
    @ans = multiply(@x,@y)
    erb :results
end 
end