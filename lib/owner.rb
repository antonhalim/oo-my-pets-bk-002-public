require 'pry'

class Owner
  attr_reader :species
  attr_accessor :name, :pets, :mood
  
  OWNERS = []

  def self.reset_all
    OWNERS.clear
  end

  def self.all
    OWNERS
  end

  def self.count
    OWNERS.length
  end


  def initialize(name)
    @species = "human"
    @name = name
    @pets = {:fishes => [], :dogs => [], :cats => []}
    # binding.pry
    OWNERS << self
  end

  def say_species
    "I am a " + @species + "."
  end

  def buy_fish(fish)
    pets[:fishes] << Fish.new(fish)
  end
    # binding.pry

    def buy_cat(cat)
      pets[:cats] << Cat.new(cat)
    end

    def buy_dog(dog)
      pets[:dogs] << Dog.new(dog)
    end

    def walk_dogs    
      pets[:dogs].each{|dog| dog.mood = "happy"}
    end

    def play_with_cats
      pets[:cats].each{|cat| cat.mood = "happy"}
    end

    def feed_fish
      pets[:fishes].each{|fish| fish.mood = "happy"}
    end

    def sell_pets
      pets.each {|animal, value| value.each {|pet| pet.mood = "nervous"}}
      @pets = {:fishes => [], :dogs => [], :cats => []}
    end

    def list_pets
      "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
    end
  end

