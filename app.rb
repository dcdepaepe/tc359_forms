require 'sinatra'
require 'holidapi'
require 'cat_api'

class MyWebApp < Sinatra::Base
  get '/' do
  	@pictures = CatAPI.new.get_images(category: 'hats')
  	@holidays = HolidApi.get(country:'US', year: Time.now.year, month: Time.now.month)
  	@birthHolidays = HolidApi.get(country:'US', year: 1991, month: 11)

    erb :index
  end
end