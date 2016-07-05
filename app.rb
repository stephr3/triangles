require('sinatra')
require('sinatra/reloader')
require('./lib/triangles')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/triangles') do
  a = params.fetch('side_a')
  b = params.fetch('side_b')
  c = params.fetch('side_c')
  triangle = Triangles.new(a, b, c)
  @results = triangle.triangle_type()
  erb(:triangles)
end
