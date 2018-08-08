require 'pry'

class Song
  @@count = 0
  @@genreCount = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre

  def initialize(nameIn, artistIn, genreIn)
    @name = nameIn
    @artist = artistIn
    @genre = genreIn
    @@count += 1
    @@artists << artistIn
    @@genres << genreIn
    @@genreCount += 1
  end

  def self.count
    return @@count
  end

  def self.artists
    uniqueArtists = @@artists
    return uniqueArtists.uniq
  end

  def self.genres
    uniqueGenres = @@genres
    return uniqueGenres.uniq
  end

  def self.genre_count
    genreHash = {}
    @@genres.each do |genre|
      if genreHash.key?(genre)
        genreHash[genre] += 1
      else
        genreHash[genre] = 1
      end
    end
    return genreHash
  end

  def self.artist_count
    artistHash = {}
    @@artists.each do |artist|
      if artistHash.key?(artist)
        artistHash[artist] += 1
      else
        artistHash[artist] = 1
      end
    end
    return artistHash
  end
end
