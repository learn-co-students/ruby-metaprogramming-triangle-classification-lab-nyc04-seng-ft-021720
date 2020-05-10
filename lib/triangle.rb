class Triangle
    attr_reader :one, :two, :three  
  def initialize(one, two, three)
    @one = one 
    @two = two 
    @three = three 
  end 

  def kind 
    validate_triangle 
    if one == two && two == three 
      :equilateral 
    elsif one == two || two == three || one == three 
      :isosceles
    else 
      :scalene 
    end 
  end 

  def validate_triangle
    real_triangle = [(one + two > three), (one + three > two), (two + three > one)] 
    [one, two, three].each do |side|
      real_triangle << false if side <= 0 
      raise TriangleError if real_triangle.include?(false)
    end 
  end 



  class TriangleError < StandardError 
  end 
end  

 
#     else  
#       begin 
#         raise TriangleError 
#       rescue TriangleError => error 
#         puts error.message  
#         :scalene 
#     end 
#   end  
# end



# end 
# end
# class Person
#   attr_accessor :name, :partner 

#   def initialize(name)
#     @name = name
#   end

#   def get_married(person)
#     self.partner = person
#       if person.class != Person
#         begin 
#           raise PartnerError
#         rescue PartnerError => error    
#           puts error.message
#         end    
#       else
#         person.partner = self
#   end
# end 

#   class PartnerError < StandardError 
#     def message 
#       "you must give the get_married method an argument of an instance of the person class!"
#   end 

# end
# end 

# beyonce = Person.new("Beyonce")
# beyonce.get_married("Jay-Z")
# puts beyonce.name




