require 'sinatra'

get "/sleep" do
  sleep(10)
end

get "/hello/:name" do
  "Hello #{params[:name]}!"
end

get "/template/:name" do
  @name = params[:name]
  erb :index
end

get "/db/write/:content" do
  File.open("db.txt", "a") do |f|
    f.write(params[:content] + "\n")
  end
  "OK"
end

get "/db/read" do
  File.open("db.txt").to_a.last
end
