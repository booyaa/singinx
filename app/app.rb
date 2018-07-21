require 'sinatra/base'
require 'sinatra/namespace'

configure do
  set :bind, '0.0.0.0'
end

class MyWay < Sinatra::Base
  register Sinatra::Namespace
  namespace '/api' do
    get '/foo' do
      'foo'
    end

    post '/bar' do
      puts params['foo']
    end
  end
end
