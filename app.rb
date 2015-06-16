require 'sinatra'

ENV['RACK_ENV'] ||= 'development'

require 'bundler'
Bundler.require :default, ENV['RACK_ENV'].to_sym

get '/' do
  erb :home
end

get '/link1' do
  erb :link1
end

get '/link2' do
  erb :link2
end

post '/upload' do
  puts params[:test]
end
