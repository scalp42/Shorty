require 'sinatra/base'

# Default to development mode unless it's specified outside the app
ENV['RACK_ENV'] ||= 'development'

# Require all universal gems plus environment specific gems
Bundler.require(:default, ENV['RACK_ENV'].to_sym)

class UploaderApp < Sinatra::Base
  register Sinatra::ActiveRecordExtension

  get '/' do
    erb :index
  end

  get '/:token/?' do

    redirect("https://www.google.com", 303)
  end

  post '/urls/?' do
    @url = "localhost:9393/#{params[:url]}"

    erb :results, locals: { url: @url }
  end

end
