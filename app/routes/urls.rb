class UploaderApp < Sinatra::Base

  post '/urls/?' do
    @url = Url.create({full_uri: params[:url]})

    @short_uri = "#{request.host_with_port}/#{@url.token}"

    erb :results, locals: { short_uri: @short_uri }
  end

end
