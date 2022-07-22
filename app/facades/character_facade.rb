class CharacterFacade 

  def self.characters(nation)
    characters = CharactersService.characters(nation)

    characters_array = JSON.parse(characters.body, symbolize_names: true)

    characters_array.map do |c|
      Character.new(c)
    end
 
    nation_members = characters_array.map do |c|
      c[:affilliation] == "nation"
    end
   
  end
end

