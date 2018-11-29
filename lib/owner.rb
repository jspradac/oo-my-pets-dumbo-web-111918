class Owner
  attr_reader :species
  attr_accessor :name, :pets
  @@all = []
  
  def initialize(species, pets = {cats: [], dogs: [], fishes: []})
    @pets = pets 
    @species = species
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def self.reset_all
    @@all = []
  end 
  
  def self.count
    @@all.count 
  end 
  
  def say_species
    "I am a #{species}."
  end 
  
  def buy_fish(name)
    self.pets[:fishes] << Fish.new(name)
  end 

  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end 

  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name)
  end 

end


