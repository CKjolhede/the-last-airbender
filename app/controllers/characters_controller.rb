class CharactersController < ApplicationController

  def index

    @characters = CharacterFacade.characters(params[:nation])
  
  end
end