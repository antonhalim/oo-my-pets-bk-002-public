class Dog
require 'pry'
  attr_accessor :mood
  attr_reader :name
  def initialize(name)
    @name = name
    @mood = "nervous"
  end
end