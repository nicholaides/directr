require "sinatra"

enable :sessions


get '/' do
  "directr"
end

get '/wrap/in' do
  session[:wrap_out_url] = params[:out]
  redirect params[:in]
end

get '/wrap/out' do
  redirect session[:wrap_out_url]
end


get '/test' do
  redirect '/wrap/in?out=/test/out&in=/test/middle'
end

get '/test/middle' do
  redirect '/wrap/out'
end

get '/test/out' do
  "It Worked!"
end
