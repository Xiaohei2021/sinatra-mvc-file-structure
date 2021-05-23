require 'pry'

class Dog
    @@all = []

attr_accessor :name, :breed, :age    


def initialize(name, breed, age)
    @name = name
    @breed = breed
    @age =age
    save
end

# def initialize(data)
#     data.each do |key, value|
#         binding.pry
#         self.send("#{key}=", value) if self.respond_to?("#{key}=")
#     end
#    save  

# end

def save
    @@all << self 
end

def self.all
    @@all
end


end