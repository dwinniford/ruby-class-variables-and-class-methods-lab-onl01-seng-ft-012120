class Song 
  attr_accessor :name, :artist, :genre
  
  @@count = 0 
  @@artists = []
  @@genres = [] 
  
  def initialize (name, artist, genre)
    @name = name 
    @artist = artist
    @genre = genre
    @@count += 1 
    @@artists << artist
    @@genres << genre 
  end 
  
  def self.count 
    @@count
  end 
  
  def self.artists 
    @@artists.uniq
  end 
  
  def self.genres 
    @@genres.uniq
  end 
  
  def self.genre_count 
    count_hash = {}
    @@genres.each do |genre|
      count_hash[genre] += 1 
    end 
    count_hash
  end 
  
end 