
Node = Struct.new(:value, :next_, :prev)
#Clase Lista doblemente enlazada
class Ldd

   include Enumerable

   #Getters
   attr_reader :cabeza, :cola
   
   #Inicializacion
   def initialize(v)
        @cabeza = Node.new(v, nil, nil)
        @cola = @cabeza
   end
   
   #Metodo para insertar un valor por detras
   def insertar_cola(v)
        aux = Node.new(v,nil,@cola)
        @cola.next_ = aux
        @cola = aux
   end
    #Metodo para insertar un valor por delane
    def insertar_cabeza(v)
        aux = Node.new(v,@cabeza,nil)
        @cabeza.prev = aux
        @cabeza = aux
    end
    #Metodo para extraer el ultimo valor
    def extraer_cabeza
       dummy = @cabeza.value 
       @cabeza = @cabeza.next_
       @cabeza.prev = nil
       return dummy
    end
    #Metodo para extraer el primer valor
    def extraer_cola
       dummy = @cola.value 
       @cola = @cola.prev
       @cola.next_ = nil
       return dummy
    end
    #Metodo para escribir de forma normalizada la lista
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
    
    #Metodo para recorrer la lista devolviendo el valor
    def each
       actual = @cabeza
       while actual != nil do
           yield actual.value
           actual = actual.next_
       end
    end
    
end