class WelcomeController < ApplicationController

  def index
  end

  # def search
  #   search_array = params[:search].split(' ')
  #   search_array.join('+')
  #   @flikr_search = HTTParty.get("https://api.flickr.com/services/rest/?method=flickr.places.find&api_key=e81306643b01d75c37c5e14f3d0ca1ab&query=#{params[:search]}&format=rest&api_sig=4d135b550bd716353d4ec0c07f953e19")
  # end


end
