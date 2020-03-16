class Artist
 attr_accessor :name, :song
     @@all = []
    def initialize(name)
        @name = name
        @@all << self
        
        
    end

    def artist


    end
        
 def self.all
    @all

 end

  def songs

     Song.all.select do |song|
        song.artist == self
     end
     #how they can acces to Song?  
  end

  def add_song(song)
    song.artist = self

  end

  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self

  end

  def self.song_count
    Song.all.count
  end

 end