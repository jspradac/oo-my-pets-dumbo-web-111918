class Cat
  attr_reader :name 
  attr_accessor :mood 
  @@cats = [] 
  def initialize(name, mood = "nervous")
    @name = name 
    @mood = mood
    @@cats << self 
  end 

  def self.find_cat(name)
    @@cats.find { |cat| cat.name == name }
  end 
  
  def self.remove_cat(name)
    @@cats - [find_cat(name)]
  end 
  
  # code goes here
end