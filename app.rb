require 'sinatra'
require 'holidapi'

class MyWebApp < Sinatra::Base
  get '/' do

  	@holidays = HolidApi.get(params)

    erb :index
  
  end
end