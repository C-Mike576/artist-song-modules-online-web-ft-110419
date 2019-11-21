require 'pry'

class Song
  include Paramable
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable
  attr_accessor :name
  attr_reader :artist

 
  def artist=(artist)
    @artist = artist
  end
  
  def self.all
    ObjectSpace.each_object(self).to_a
  end


end
