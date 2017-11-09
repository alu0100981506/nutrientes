Node = Struct.new(:value, :next_, :prev)

class Ldd
    
   attr_reader :cabeza, :cola
   def initialize(v)
        @cabeza = Node.new(v, nil, nil)
        @cola = @cabeza
   end
   
   
   
end