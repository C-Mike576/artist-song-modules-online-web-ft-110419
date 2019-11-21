require 'pry'

class Artist
  include Paramable
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable
  attr_accessor :name
  attr_reader :songs


  def initialize
    super
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end
  
  def self.all
    ObjectSpace.each_object(self).to_a
  end

end
