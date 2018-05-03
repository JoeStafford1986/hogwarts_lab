require('sinatra')
require('sinatra/contrib/all')

require('pry-byebug')
require_relative('models/house')
require_relative('models/student')

get '/' do
  erb( :index )
end

get '/students' do
  @students = Student.all()
  erb( :students )
end

get '/students/new' do
  erb(:new)
end

post '/students' do
  @student = Student.new(params)
  @student.save()
  redirect '/students'
end

get '/students/:id' do
  @student = Student.find(params[:id])
  erb(:show)
end
