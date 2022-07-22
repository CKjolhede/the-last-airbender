class CharactersFacade 

  def self.characters(nation)
    characters_array = CharactersService.characters(nation)

    nation_members = characters_array.find_all { |c| c[:affilliation] == nation}

    nation_members.map do |c|
      Character.new(c)
    end
  end

end

