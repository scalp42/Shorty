require 'sinatra/base'

# Default to development mode unless it's specified outside the app
ENV['RACK_ENV'] ||= 'development'

# Require all universal gems plus environment specific gems
Bundler.require(:default, ENV['RACK_ENV'].to_sym)

class ShortyApp < Sinatra::Base
  register Sinatra::ActiveRecordExtension

  # Load 'homepage'
  get '/' do
    erb :index
  end

  # Fetches the original URL via the short token and redirects the client
  get '/:token/?' do
    @url = Url.find_by_token(params[:token])

    @url.increment_views()

    redirect(@url.full_uri, 303)
  end

end

# Load all dependent code
Dir[File.expand_path("../models/*.rb", __FILE__)].sort.each{|file| require file}
Dir[File.expand_path("../routes/*.rb", __FILE__)].sort.each{|file| require file}
