require('sinatra')
require('sinatra/contrib/all')

require('pry-byebug')
require_relative('models/house')
require_relative('models/student')

get '/' do
  erb( :index )
end

get '/show_students' do
  @students = Student.all()
  erb( :show_students )
end
