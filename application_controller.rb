require 'bundler'
Bundler.require

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  
  post '/sample' do
    @x = params["firstnumber"].to_i
    @y = params["lastnumber"].to_i
    @ans = multiply(@x,@y)
    erb :results
end 
end