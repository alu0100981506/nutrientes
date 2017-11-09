
Node = Struct.new(:value, :next_, :prev)

class Ldd
    
  
   def initialize(v)
        @cabeza = Node.new(v, nil, nil)
        @cola = @cabeza
   end
   
   
   
end