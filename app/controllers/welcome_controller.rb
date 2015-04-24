# require 'flickraw'
require 'httparty'

class WelcomeController < ApplicationController

  def index
  end

  def search

    secret_key = ENV['secret_key']

    search_value = params[:search].gsub(/\s/,"%20")

    if search_value.present?
      search_results = HTTParty.get("https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=#{secret_key}&tags=#{search_value}&format=rest").parsed_response["rsp"]["photos"]["photo"]
      @photos = search_results.first(100)
      render :search
    else
      redirect_to :back, notice: "Must provide a search term"
      
    end
  end
end
