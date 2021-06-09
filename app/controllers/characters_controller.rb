class CharactersController < ApplicationController
  def index
    @character = AnimeCharacter.new
    @characters = AnimeCharacter.all
  end

  def create
    AnimeCharacter.create!(character_params)
    redirect_to action: :index
  end

  private
  def character_params
    params.require(:anime_character).permit(:name, :age, :gender, :voice_acter)
  end
end
