class Song

  attr_accessor :name, :artist, :genre

  def initialize(name, genre)
    @name = name
    @genre = genre
    genre.songs << self
    # genre.add_song(self)
  end

end

# rap = Genre.new("Rap")
# hotline_bling = Song.new("Hotline Bling", rap)
# hotline_bling.genre => rap

# rap.add_song(hotline_bling)
# rap.songs => [hotline_bling]

# redbone = Song.new("Redbone", rap)
#
# #behind the scene b/c it's in initialize
# redbone.genre => rap
# rap.add_song(redbone) #<-object not the song string
# rap.songs => [hotline_bling, redbone] objects
