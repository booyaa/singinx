require 'sinatra/base'
require 'sinatra/namespace'

class MyWay < Sinatra::Base
  configure do
    set :bind, '0.0.0.0'
    enable :logging
  end

  register Sinatra::Namespace
  namespace '/api' do
    get '/foo' do
      logger.info "api/foo parameters: #{params}"
      params.inspect
    end

    post '/bar' do
      logger.info "api/bar parameters: #{params}"
      params.inspect
    end
  end
end
