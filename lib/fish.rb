class Fish
  attr_reader :name 
  attr_accessor :mood 
  @@fishes = [] 
  def initialize(name, mood = "nervous")
    @name = name 
    @mood = mood
    @@fishes << self 
  end 

  def self.find_fish(name)
    @@fishes.find { |fish| fish.name == name }
  end 
  
  def self.remove_fish(name)
    @@fishes - [find_fish(name)]
  end 
  
  # code goes here
end
