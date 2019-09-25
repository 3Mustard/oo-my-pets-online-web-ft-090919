class Owner
  attr_reader :name, :species
  attr_accessor :cats, :dogs
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
    Cat.all.select {|cat| cat.owner == self}
  end 
  
  def dogs 
    Dog.all.select {|dog| dog.owner == self}
  end 
  
  def buy_cat 
    @cats << Cat.new(name,self)
  end 
  
  def buy_dog
    @dogs << Dog.new(name,self)
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