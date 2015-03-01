require 'sinatra'
require 'holidapi'

class MyWebApp < Sinatra::Base
  get '/' do

  	@holidays = HolidApi.get(country: params["country"], year: params["year"], month: params["month"])

    erb :index
  
  end
end