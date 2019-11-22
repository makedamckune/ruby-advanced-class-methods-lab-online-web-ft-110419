class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
   def self.create 
    song = self.new
    self.all << song
    song
  end
   def self.new_by_name(title) 
    song = self.new
    song.name = title
    song
  end
  def self.create_by_name(title)  
    song = self.create
    song.name = title
    song
  end
   def self.find_by_name(title) #class finder
    result = self.all.detect {|song| song.name == title}
    result
  end
  def self.find_or_create_by_name(title)
    #either return a matching song instance with that name or create a new song with the name and return the song instance
    result = self.find_by_name(title)
    if result
      result
    else
      self.create_by_name(title)
    end
  end 
  
end