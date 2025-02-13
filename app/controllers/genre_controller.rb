class GenresController < ApplicationController

  get '/genres' do
    erb :'/genres/index'
  end
  
  get '/genres/:slug' do
    if @genre = Genre.find_by_slug(params[:slug])
      erb :'/genres/show'
    end
  end
  
end