require 'sinatra'
require 'holidapi'

class MyWebApp < Sinatra::Base
  get '/' do

    erb :index
  
  end
end