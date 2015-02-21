require 'sinatra'
require 'holidapi'

class MyWebApp < Sinatra::Base
  get '/' do
  	@holidays = HolidApi.get(country:'US', year: Time.now.year, month: Time.now.month)
  	@birthHolidays = HolidApi.get(country:'US', year: 1991, month: 11)

    erb :index
  end
end