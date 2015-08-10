require('sinatra')
require('sinatra/reloader')
require('./lib/triangle')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/results') do

  side_one   = params.fetch('side_one')
  side_two   = params.fetch('side_two')
  side_three = params.fetch('side_three')

  @triangle  = Triangle.new(side_one.to_i(), side_two.to_i(), side_three.to_i())

  if @triangle.triangle?()
    @type      = @triangle.type()
    erb(:results)
  else
    @message = "That's not a triangle, daft git"
    erb(:index)
  end
end


get('/*') do
  erb(:index)
end
