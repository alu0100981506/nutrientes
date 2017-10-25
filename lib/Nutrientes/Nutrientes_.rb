class Cnutrientes

attr_reader :Nombre, :Proteinas, :Glucidos, :Lipidos

 def initialize(n, p, g, l)
 
	@Nombre = n
	@Proteinas = p
	@Glucidos = g
	@Lipidos = l

 end

def to_s
	
	"[#{@Nombre}, #{@Proteinas}, #{@Glucidos}, #{@Lipidos}]"

end

def val_ener

 	(@Proteinas.to_f*4.0)+(@Glucidos.to_f*4.0)+(@Lipidos.to_f*9.0)

end

end
