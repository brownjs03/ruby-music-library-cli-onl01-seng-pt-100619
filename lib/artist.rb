class Artist
  
  attr_accessor :name, :songs 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @songs = []
    save 
  end 
  
  def self.all 
    @@all 
  end 
  
  def self.destroy_all
    @@all.clear
  end 
  
  def save 
    @@all << self 
  end 
  
  def self.create(name)
    self.new(name)
  end 
  
  def add_song(song) 
    if song.artist == nil
      song.artist = self 
      @songs << song 
    end 
  end 
  
  def genres
    @new_array = []
    @songs.each do |song|
      if @new_array.include?(song.genre)
        nil
      else
        @new_array << song.genre
      end
    end
    @new_array
  end
  
end 