require 'sinatra'

configure do
    set :bind, '0.0.0.0'
end

class MyWay < Sinatra::Base
    get '/foo' do
    'foo'
    end

    post '/bar' do
    params['foo']
    end
end