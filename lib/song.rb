class Song 
  attr_accessor :name, :artist_name 
  @@ll = []
  
  def self.all 
    @@all 
  end 
  
  def save 
    self.class.all << self 
  end 
  
  def self.create
    @self.create << @@all 
  end 
end 

song = Song.create
Song.all.include?(song) 