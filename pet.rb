require 'pry'

class Pet 

    attr_accessor :name
    attr_reader :species 


## attr_accessor gives setter and getter methods 

    ## setter method 
    # def name=(name) => .name = _value_
    #     @name = name
    # end 

    ## getter method 
        # def name => .name 
        #     @name
        # end 


    # what method invokes the initialize method? .new
    # .new automatically calls initialize

    # def initialize(name, species)
    #     @name = name
    #     @species = species 
    # end 

end 

fluffy = Pet.new
fluffy.name = "fluffy"
# i want to add a name property to my pet `fluffy`


binding.pry 
puts ""