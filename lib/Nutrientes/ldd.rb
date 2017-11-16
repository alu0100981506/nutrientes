
Node = Struct.new(:value, :next_, :prev)

class Ldd

    include Enumerable

    
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
    
    def extraer_cabeza
       dummy = @cabeza.value 
       @cabeza = @cabeza.next_
       @cabeza.prev = nil
       return dummy
    end
    
    def extraer_cola
       dummy = @cola.value 
       @cola = @cola.prev
       @cola.next_ = nil
       return dummy
    end
    
    def to_s
       cadena = "("
       dummy = @cabeza
       while (dummy != nil) do
           cadena += "#{dummy.value.to_s} "
           dummy = dummy.next_
       end
       cadena += ")"
       return cadena
    end
    
    
    def each
       actual = @cabeza
       while actual != nil do
           yield actual.value
           actual = actual.next_
       end
    end
    
end