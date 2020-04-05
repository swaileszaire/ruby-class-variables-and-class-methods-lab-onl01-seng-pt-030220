class Song

  attr_accessor :name, :artist, :genre
  

  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre 
    @count = 0
  end
  
  def self.count 
    @@count 
  end 

  @@genres = []

  def self.genre_count
    genre_count = {}
    @@genres.each do |x|
      if genre_count[x]
        genre_count[x] += 1 
      else
        genre_count[x] = 1
      end
    end
    genre_count
  end
  
  def self.genres
    @@genres.uniq 
  end 
  
  
  @@artists = []
  
  def self.artist_count
    @@artists.inject(Hash.new(0)) { |total, i| total[i] += 1 ;total}
  end
  
  def self.artists
    @@artists.uniq
  end
end 

