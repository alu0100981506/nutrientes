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

end
