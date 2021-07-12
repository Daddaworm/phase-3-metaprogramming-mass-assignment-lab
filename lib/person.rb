class Person
  attr_accessor 

  def initialize(attributes)
    attributes.each do |key, value|
      self.class.attr_accessor(key) # <= Adds attr_accessor equal to every key passed in the attributes hash
      self.send(("#{key}="), value)
    end
  end

end