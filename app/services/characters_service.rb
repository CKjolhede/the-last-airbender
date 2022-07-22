class CharactersService 
  def self.conn
    Faraday.new(url: 'https://last-airbender-api.herokuapp.com') 
  end

  def self.characters(nation)
  conn.get("/api/v1/characters") 
    
    #do |faraday|
      # faraday.params[:affiliation] = nation
  end
    
 
end
