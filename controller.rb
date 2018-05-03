require('sinatra')
require('sinatra/contrib/all')

require('pry-byebug')
require_relative('models/house')
require_relative('models/student')

get '/' do
  erb( :home )
end
