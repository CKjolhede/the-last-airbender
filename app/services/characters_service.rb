class CharactersService 
  def self.conn
    Faraday.new(url: 'https://last-airbender-api.herokuapp.com' ) 
  end

  def self.characters(nation)
    response = conn.get("/api/v1/characters") do |faraday|
      faraday.params[:affiliation] = nation
    binding.pry
    end
    
    characters_array = JSON.parse(response.body, symbolize_names: true)
  end
end