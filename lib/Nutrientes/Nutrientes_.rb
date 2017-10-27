class Cnutrientes

attr_reader :nombre, :proteinas, :glucidos, :lipidos

 def initialize(n, p, g, l)
 
	@nombre = n
	@proteinas = p
	@glucidos = g
	@lipidos = l

 end

def to_s
	
	"[#{@nombre}, #{@proteinas}, #{@glucidos}, #{@lipidos}]"

end

def val_ener

 	(@proteinas.to_f*4.0)+(@glucidos.to_f*4.0)+(@lipidos.to_f*9.0)

end

end
