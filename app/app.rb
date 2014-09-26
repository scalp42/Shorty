require 'sinatra/base'

# Require all universal gems plus environment specific gems
Bundler.require(:default, ENV['RACK_ENV'].to_sym)

class UploaderApp < Sinatra::Base

  get '/' do
    'Hello!'
  end

end
