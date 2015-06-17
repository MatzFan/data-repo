require 'sinatra'

ENV['RACK_ENV'] ||= 'development'

require 'bundler'
Bundler.require :default, ENV['RACK_ENV'].to_sym

get '/' do
  erb :home
end

get '/detailstab' do
  docSeq = params['docSeq']
  puts docSeq
  if docSeq == '2120154'
    erb :link1
  else
    erb :link2
  end
end

# get '/detailstab?tab=details&nameSeq=461382&docSeq=2120154' do
#   erb :link1
# end

# get '/detailstab?tab=details&amp;nameSeq=2042291&amp;docSeq=2120156' do
#   erb :link2
# end
