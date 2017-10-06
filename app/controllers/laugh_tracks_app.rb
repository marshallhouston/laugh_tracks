class LaughTracksApp < Sinatra::Base
  set :root, File.expand_path("..", __dir__)

  get '/comedians' do
    @comedians = Comedian.all
    erb :index
  end

##in pry, when we add the query it shows {"age"=>"34"} but we're not filtering...
  get '/comedians?age=:age' do
    @comedians = Comedian.where(params[age: :age.to_i])
    require "pry"; binding.pry
    erb :index
  end
end
