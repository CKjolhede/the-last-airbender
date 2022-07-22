class BaseService

  def self.conn
    Faraday.new(url: 'https://last-airbender-api.herokuapp.com' ) 
  end

end