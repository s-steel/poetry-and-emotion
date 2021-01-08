class SearchController < ApplicationController
  def index
    author  = params[:author]
    @poetry = SearchFacade.search_poetry(author, 10)
  end
end