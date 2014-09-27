class UploaderApp < Sinatra::Base

  post '/urls/?' do
    @url = Url.create({full_uri: params[:url]})

    @short_uri = @url.short_uri

    erb :results, locals: { short_uri: @short_uri }
  end

end
