class Api::V1::LanguagesController < ApplicationController

  def index
    @languages = LanguagesFetcher.call
    render :json => @languages
  end

end