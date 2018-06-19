require_relative '../config/environment'
require 'pry'

class Song
  extend Memorable
  extend Findable
  include Paramable
  
  attr_accessor :name
  attr_reader :artist

  @@all = []

  def initialize
    @@all << self
  end

  def artist=(artist)
    @artist = artist
  end

  def to_param
    name.downcase.gsub(' ', '-')
  end

  # def self.count
  #   self.all.count
  # end

  def self.all
    @@all
  end
end
