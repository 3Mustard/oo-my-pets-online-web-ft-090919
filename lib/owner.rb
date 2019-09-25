class Owner
  attr_reader :name, :species
  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
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
  
  def say_species 
    "I am a #{self.species}."
  end 
  
  def cats 
    Cat.all.collect {|cat| cat.owner == self}
  end 
  
  def dogs 
    Dog.all.collect {|dog| dog.owner == self}
  end 
  
  def buy_cat 
  end 
  
  def buy_dog
  end 
  
  def walk_dogs
  end 
  
  def feed_cats
  end 
  
  def sell_pets 
  end 
  
  def list_pets
  end 
  
end