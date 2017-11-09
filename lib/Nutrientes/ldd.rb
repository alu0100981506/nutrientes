
Node = Struct.new(:value, :next_, :prev)

class Ldd
    
   attr_reader :cabeza, :cola
   
   def initialize(v)
        @cabeza = Node.new(v, nil, nil)
        @cola = @cabeza
   end
   
   
   def insertar_cola(v)
        aux = Node.new(v,nil,@cola)
        @cola.next_ = aux
        @cola = aux
   end
    
    def insertar_cabeza(v)
        aux = Node.new(v,@cabeza,nil)
        @cabeza.prev = aux
        @cabeza = aux
    end
    
end