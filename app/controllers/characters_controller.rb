class CharactersController < ApplicationController

  def index
    @characters = CharactersFacade.characters(params[:nation])
  end
end