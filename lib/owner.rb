require 'pry'
class Owner
  attr_accessor :pets, :name
  @@all = []

  def initialize(pets)
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all.clear
  end

  def species
    @species = "human"
  end

  def say_species
    "I am a human."
  end

  def name
    @name
  end

  def buy_fish(name_of_fish)
    new_fish = Fish.new(name_of_fish)
    @pets[:fishes] << new_fish
  end

  def buy_cat(name_of_cat)
    new_cat = Cat.new(name_of_cat)
    @pets[:cats] << new_cat
  end

  # code goes here
end
