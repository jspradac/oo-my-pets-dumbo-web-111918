class Dog
  attr_reader :name 
  attr_accessor :mood 
  @@dogs = [] 
  def initialize(name, mood = "nervous")
    @name = name 
    @mood = mood
    @@dogs << self 
  end 

  def self.find_dog(name)
    @@dogs.find { |dog| dog.name == name }
  end 
  
  def self.remove_dog(name)
    @@dogs - [find_dog(name)]
  end 
  
  # code goes here
end