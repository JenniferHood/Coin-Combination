require('sinatra')
require('sinatra/reloader')
require('./lib/coin_combination')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/coin_combination') do
  @change = (params.fetch('dollar_amount')).to_f.make_change()
  erb(:coin_combination)
end
