require 'pry'

class Song
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  include Paramble
  
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    self.class.all << self
  end

  def self.find_by_name(name)
    @@songs.detect{|a| a.name == name}
  end

  def self.all
    @@songs
  end

  #def self.reset_all
    #self.all.clear
  #end

  #def self.count
    #self.all.count
  #end

  def artist=(artist)
    @artist = artist
  end

  
end
