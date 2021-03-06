#Clase calculadora de nutrientes
class Cnutrientes


include Comparable

#Getters
attr_reader :nombre, :proteinas, :glucidos, :lipidos

#Inicializacion
 def initialize(n, p, g, l)
 
	@nombre = n
	@proteinas = p
	@glucidos = g
	@lipidos = l

 end
#Metodo para escribir de forma normalizada los nutrientes
def to_s
	
	"[#{@nombre}, #{@proteinas}, #{@glucidos}, #{@lipidos}]"

end
#Metodo para calcular el valor energetico
def val_ener

 	(@proteinas.to_f*4.0)+(@glucidos.to_f*4.0)+(@lipidos.to_f*9.0)

end
#Metodo para hacer comparaciones
def <=>(clase)
		return self.val_ener <=> clase.val_ener
end

end


 class HuevosLacteosyHelados < Cnutrientes
	def initialize(n, p, g, l)
		super(n, p, g, l)
	end
	
	def to_s
		"[#{@nombre}, #{@proteinas}, #{@glucidos}, #{@lipidos} Grupo = Huevos Lacteos y Helados ]"
	end
 end
 
 
  class CarnesyDerivados < Cnutrientes
	def initialize(n, p, g, l)
		super(n, p, g, l)
	end
	
	def to_s
		"[#{@nombre}, #{@proteinas}, #{@glucidos}, #{@lipidos} Grupo = Carnes y Derivados ]"
	end
	
  end
  
  class PescadosyMariscos < Cnutrientes
	def initialize(n, p, g, l)
		super(n, p, g, l)
	end
	
	def to_s
		"[#{@nombre}, #{@proteinas}, #{@glucidos}, #{@lipidos} Grupo = Pescados y Mariscos ]"
	end
  end
  
  class AlimentosGrasos < Cnutrientes
	def initialize(n, p, g, l)
		super(n, p, g, l)
	end
	
	def to_s
		"[#{@nombre}, #{@proteinas}, #{@glucidos}, #{@lipidos} Grupo = Alimentos Grasos ]"
	end
  end
  
  class AlimentosRicosEnCarbohidratos < Cnutrientes
	def initialize(n, p, g, l)
		super(n, p, g, l)
	end
	
	def to_s
		"[#{@nombre}, #{@proteinas}, #{@glucidos}, #{@lipidos} Grupo = Alimentos Ricos En Carbohidratos ]"
	end
  end
  
  class VerdurasyHortalizas < Cnutrientes
	def initialize(n, p, g, l)
		super(n, p, g, l)
	end
	
	def to_s
		"[#{@nombre}, #{@proteinas}, #{@glucidos}, #{@lipidos} Grupo = Verduras y Hortalizas ]"
	end
  end
  
  class Frutas < Cnutrientes
	def initialize(n, p, g, l)
		super(n, p, g, l)
	end
	
	def to_s
		"[#{@nombre}, #{@proteinas}, #{@glucidos}, #{@lipidos} Grupo = Frutas ]"
	end
  end
  
