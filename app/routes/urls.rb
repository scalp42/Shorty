class ShortyApp < Sinatra::Base

  # Creates a new shortened URL
  post '/urls/?' do
    # Note: Doesn't check if the full_uri already exists
    @url = Url.create({full_uri: params[:url]})

    @short_uri = "#{request.host_with_port}/#{@url.token}"

    erb :results
  end

end
