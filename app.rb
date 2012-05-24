require "sinatra"

enable :sessions


get '/' do
  "Welcome to directr"
end

get '/go' do
  session[:wrap_out_url] = params[:out]
  redirect params[:in]
end

get '/return' do
  redirect session[:wrap_out_url]
end


get '/test' do
  redirect '/go?out=/test/out&in=/test/middle'
end

get '/test/middle' do
  redirect '/return'
end

get '/test/out' do
  "It Worked!"
end
