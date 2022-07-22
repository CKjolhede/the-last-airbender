class Character
  attr_reader :name, :image_url, :alies, :enemies, :affiliation

  def initialize(data)

  @name = data[:name]
  @image_url = data[:photoUrl]
  @allies = data[:allies]
  @enemies = data[:enemies]
  @affiliation = data[:affiliation]
  end
end