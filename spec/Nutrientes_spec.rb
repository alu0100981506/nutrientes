require "spec_helper"


RSpec.describe Nutrientes do
  before :each do
	@prueba = Cnutrientes.new("Huevo Frito", "14.1", "0.0", "19.5")
 end

  it "has a version number" do
    expect(Nutrientes::VERSION).not_to be nil
  end


 it "Obtener el nombre del Cnutrientes" do
	expect(@prueba.nombre).to eq("Huevo Frito")
 end

 it "Obtener la cantidad de proteınas de un Cnutrientes" do
	expect(@prueba.proteinas).to eq("14.1")
 end

 it "Obtener la cantidad Glucidos de un Cnutrientes" do
	expect(@prueba.glucidos).to eq("0.0")
 end

 it "Obtener la cantidad de Grasas de un Cnutrientes" do
	expect(@prueba.lipidos).to eq("19.5")
 end

 it "Obtener el Cnutrientes formateado" do
	expect(@prueba.to_s).to eq("[Huevo Frito, 14.1, 0.0, 19.5]")
 end


 it "Obtener el valor energetico de un Cnutrientes" do
	expect(@prueba.val_ener).to eq(231.9)
 end
describe "Comparable" do
		    it "Menor" do
		        @prueba1 = Cnutrientes.new("Huevo Frito", "14.1", "0.0", "19.5")
		        expect(@prueba < @prueba1).to eq(false)
		    end
		    it "Mayor" do
		        @prueba1 = Cnutrientes.new("Huevo Frito", "14.1", "0.0", "19.5")
		        expect(@prueba > @prueba1).to eq(false)
		    end
		    it "Igual" do
		        @prueba1 = Cnutrientes.new("Huevo Frito", "14.1", "0.0", "19.5")
		        expect(@prueba == @prueba1).to eq(true)
		    end
end

describe "Index" do
  		  it "Chocolate" do
  		    @yog = Cnutrientes.new("Chocolate",1,1,1)
  		    datos = [[6.5, 6.5, 6.7, 6.5, 6.5, 6.8, 6.7, 6.2, 6.5, 7.2, 6.9, 7.0, 6.3 ,6.2, 6.1 ,5.9 ,5.8 ,6.1, 6.7, 6.7, 6.6 ,6.7 ,6.9 ,7.2, 7.1],[4.6, 4.6, 4.7, 4.7, 4.8, 4.7, 4.8, 4.8, 4.6, 4.4, 4.7, 4.7, 4.8, 4.7, 5.2, 5.9, 5.9, 5.7, 5.4, 5.3, 5.1, 4.8, 4.8, 4.9, 5.9]]
  		    glucosa = [[4.9 ,5.3 ,5.9 ,6.7 ,7.2 ,7.6 ,8.0 ,8.2, 8.2 ,8.4 ,8.3 ,8.3 ,8.0 ,7.5, 7.1, 6.8 ,6.8 ,6.9, 6.8, 6.3 ,6.2 ,6.3 ,6.2 ,6.3, 6.1],[6.3, 5.4, 5.6, 5.7, 6.5, 7.4, 7.9, 7.4, 7.7, 7.9, 7.9, 7.8, 7.8, 7.8, 8.0, 8.5, 9.4 ,10.8 ,10.5, 9.1, 8.9, 8.3, 7.7, 7.6 ,7.5]]
  		    index = @yog.calculate_index(datos,glucosa)
  		    expect(index).to eq(13.328114527479904)
  		  end
enddescribe "Index" do
  		  it "Chocolate" do
  		    @yog = Cnutrientes.new("Chocolate",1,1,1)
  		    datos = [[6.5, 6.5, 6.7, 6.5, 6.5, 6.8, 6.7, 6.2, 6.5, 7.2, 6.9, 7.0, 6.3 ,6.2, 6.1 ,5.9 ,5.8 ,6.1, 6.7, 6.7, 6.6 ,6.7 ,6.9 ,7.2, 7.1],[4.6, 4.6, 4.7, 4.7, 4.8, 4.7, 4.8, 4.8, 4.6, 4.4, 4.7, 4.7, 4.8, 4.7, 5.2, 5.9, 5.9, 5.7, 5.4, 5.3, 5.1, 4.8, 4.8, 4.9, 5.9]]
  		    glucosa = [[4.9 ,5.3 ,5.9 ,6.7 ,7.2 ,7.6 ,8.0 ,8.2, 8.2 ,8.4 ,8.3 ,8.3 ,8.0 ,7.5, 7.1, 6.8 ,6.8 ,6.9, 6.8, 6.3 ,6.2 ,6.3 ,6.2 ,6.3, 6.1],[6.3, 5.4, 5.6, 5.7, 6.5, 7.4, 7.9, 7.4, 7.7, 7.9, 7.9, 7.8, 7.8, 7.8, 8.0, 8.5, 9.4 ,10.8 ,10.5, 9.1, 8.9, 8.3, 7.7, 7.6 ,7.5]]
  		    index = @yog.calculate_index(datos,glucosa)
  		    expect(index).to eq(13.328114527479904)
  		  end
end

  describe Ldd do
   before :each do  
        @valor = 1
        
        @ej = Ldd.new(@valor)
    end
    context "Pruebas de Listas" do
       it "Debe existir un Nodo de la lista con sus datos, su siguiente y su previo" do
           expect(@ej).not_to eq(nil)
    end
    it "devuelve la cabeza y cola" do
  			expect(@ej.cabeza).not_to eq(nil)
  			
  			expect(@ej.cola).not_to eq(nil)
  		end
    end
    
    context "Metodos" do
        it "Insertar cola" do
  		  dummy = 2
  		  @ej.insertar_cola(dummy)
  		  expect(@ej.cola.value).to eq(dummy)
  	  end
  	  
  	    it "Insertar head" do
  	  	dummy = 2
  	  	@ej.insertar_cabeza(dummy)
  	  	expect(@ej.cabeza.value).to eq(dummy)
  	  end
  	  
  	  it "Extraer cabeza"do
  	  	dummy = 2
  		  @ej.insertar_cabeza(dummy)
  		  expect(@ej.extraer_cabeza).to eq(dummy)
  	  end
  	  
  	  it "Extraer cola" do
  	  	dummy = 2
  		@ej.insertar_cola(dummy)
  		expect(@ej.extraer_cola).to eq(dummy)
  	  end
  	  
  	  it "to_s"do
  	  	
  		  expect(@ej.to_s).to eq("(1 )")
  	  end
  	  
    end
    
     context "Enumerable" do
        it "Sumar los elementos" do
            dummy= 0
            @ej.insertar_cabeza(dummy)
            dummy = 1
            @ej.insertar_cabeza(dummy)
            dummy = 2
            @ej.insertar_cabeza(dummy)
            dummy = 3
            @ej.insertar_cabeza(dummy)
            value = 0
            @ej.each { |k| value += k }
            expect(value).to eq(7)
        end
    end
  end
  
  describe HuevosLacteosyHelados do
  	before :each do
  		  @huevo = HuevosLacteosyHelados.new("Huevo frito", 14.1, 0.0, 10.5)
  		  @leche = HuevosLacteosyHelados.new("Leche vaca", 3.3, 4.8, 3.2)
  		  @yogurt = HuevosLacteosyHelados.new("Yogurt", 3.8, 4.9, 3.8)
  	end 
  	context "Huevos lacteos y Helados"do
  		it"Huevo frito"do
  			expect(@huevo.class).to eq(HuevosLacteosyHelados)
  			expect(@huevo.class.superclass).to eq(Cnutrientes)
  			expect(@huevo.instance_of? HuevosLacteosyHelados).to eq(true)
  			expect(@huevo.is_a? HuevosLacteosyHelados).to eq(true)
  		end
  		it"Leche vaca"do
  			expect(@leche.class).to eq(HuevosLacteosyHelados)
  			expect(@leche.class.superclass).to eq(Cnutrientes)
  			expect(@leche.instance_of? HuevosLacteosyHelados).to eq(true)
  			expect(@leche.is_a? HuevosLacteosyHelados).to eq(true)
  		end
  		it"Yogurt"do
  			expect(@yogurt.class).to eq(HuevosLacteosyHelados)
  			expect(@yogurt.class.superclass).to eq(Cnutrientes)
  			expect(@yogurt.instance_of? HuevosLacteosyHelados).to eq(true)
  			expect(@yogurt.is_a? HuevosLacteosyHelados).to eq(true)
  		end
  	end
 end
  
    describe CarnesyDerivados do
  	before :each do
  		  @cerdo = CarnesyDerivados.new("Cerdo", 21.5, 0.0, 6.3)
  		  @ternera = CarnesyDerivados.new("Ternera", 21.1, 0.0, 3.1)
  		  @pollo = CarnesyDerivados.new("Pollo", 20.6, 0.0, 5.6)
  	end 
  	context "Carnes y derivados"do
  		it"Cerdo"do
  			expect(@cerdo.class).to eq(CarnesyDerivados)
  			expect(@cerdo.class.superclass).to eq(Cnutrientes)
  			expect(@cerdo.instance_of? CarnesyDerivados).to eq(true)
  			expect(@cerdo.is_a? CarnesyDerivados).to eq(true)
  		end
  		it"Ternera"do
  			expect(@ternera.class).to eq(CarnesyDerivados)
  			expect(@ternera.class.superclass).to eq(Cnutrientes)
  			expect(@ternera.instance_of? CarnesyDerivados).to eq(true)
  			expect(@ternera.is_a? CarnesyDerivados).to eq(true)
  		end
  		it"Pollo"do
  			expect(@pollo.class).to eq(CarnesyDerivados)
  			expect(@pollo.class.superclass).to eq(Cnutrientes)
  			expect(@pollo.instance_of? CarnesyDerivados).to eq(true)
  			expect(@pollo.is_a? CarnesyDerivados).to eq(true)
  		end
  	end
  end
  
  
    describe PescadosyMariscos do
  	before :each do
  		  @bacalao = PescadosyMariscos.new("Bacalao", 17.7, 0.0, 0.4)
  		  @atun = PescadosyMariscos.new("Atun", 21.5, 0.0, 15.5)
  		  @salmon = PescadosyMariscos.new("Salmon", 19.9, 0.0, 13.6)
  	end 
  	context "Pescados y Mariscos"do
  		it"Bacalao"do
  			expect(@bacalao.class).to eq(PescadosyMariscos)
  			expect(@bacalao.class.superclass).to eq(Cnutrientes)
  			expect(@bacalao.instance_of? PescadosyMariscos).to eq(true)
  			expect(@bacalao.is_a? PescadosyMariscos).to eq(true)
  		end
  		it"Atun"do
  			expect(@atun.class).to eq(PescadosyMariscos)
  			expect(@atun.class.superclass).to eq(Cnutrientes)
  			expect(@atun.instance_of? PescadosyMariscos).to eq(true)
  			expect(@atun.is_a? PescadosyMariscos).to eq(true)
  		end
  		it"Salmon"do
  			expect(@salmon.class).to eq(PescadosyMariscos)
  			expect(@salmon.class.superclass).to eq(Cnutrientes)
  			expect(@salmon.instance_of? PescadosyMariscos).to eq(true)
  			expect(@salmon.is_a? PescadosyMariscos).to eq(true)
  		end
  	end
  end
  
  
    describe AlimentosGrasos do
  	before :each do
  		  @aceite = AlimentosGrasos.new("Aceite de oliva", 0.0, 0.2, 99.6)
  		  @mantequilla = AlimentosGrasos.new("Mantequilla", 0.7, 0.0, 83.2)
  		  @chocolate = AlimentosGrasos.new("Chocolate", 5.3, 47.0, 30.0)
  	end 
  	context "Alimentos Grasos"do
  		it"Aceite"do
  			expect(@aceite.class).to eq(AlimentosGrasos)
  			expect(@aceite.class.superclass).to eq(Cnutrientes)
  			expect(@aceite.instance_of? AlimentosGrasos).to eq(true)
  			expect(@aceite.is_a? AlimentosGrasos).to eq(true)
  		end
  		it"Mantequilla"do
  			expect(@mantequilla.class).to eq(AlimentosGrasos)
  			expect(@mantequilla.class.superclass).to eq(Cnutrientes)
  			expect(@mantequilla.instance_of? AlimentosGrasos).to eq(true)
  			expect(@mantequilla.is_a? AlimentosGrasos).to eq(true)
  		end
  		it"Chocolate"do
  			expect(@chocolate.class).to eq(AlimentosGrasos)
  			expect(@chocolate.class.superclass).to eq(Cnutrientes)
  			expect(@chocolate.instance_of? AlimentosGrasos).to eq(true)
  			expect(@chocolate.is_a? AlimentosGrasos).to eq(true)
  		end
  	end
  end
  
    describe AlimentosRicosEnCarbohidratos do
  	before :each do
  		  @azucar = AlimentosRicosEnCarbohidratos.new("Azucar", 0.0, 99.8, 0.0)
  		  @arroz = AlimentosRicosEnCarbohidratos.new("Arroz", 6.8, 77.7, 0.6)
  		  @lentejas = AlimentosRicosEnCarbohidratos.new("Lentejas", 23.5, 52.0, 1.4)
  		  @papas = AlimentosRicosEnCarbohidratos.new("Papas", 2.0, 15.4, 0.1)
  	end 
  	context " Alimentos Ricos en carbohidratos"do
  		it"Azucar"do
  			expect(@azucar.class).to eq(AlimentosRicosEnCarbohidratos)
  			expect(@azucar.class.superclass).to eq(Cnutrientes)
  			expect(@azucar.instance_of? AlimentosRicosEnCarbohidratos).to eq(true)
  			expect(@azucar.is_a? AlimentosRicosEnCarbohidratos).to eq(true)
  		end
  		it"Arroz"do
  			expect(@arroz.class).to eq(AlimentosRicosEnCarbohidratos)
  			expect(@arroz.class.superclass).to eq(Cnutrientes)
  			expect(@arroz.instance_of? AlimentosRicosEnCarbohidratos).to eq(true)
  			expect(@arroz.is_a? AlimentosRicosEnCarbohidratos).to eq(true)
  		end
  		it"Lentejas"do
  			expect(@lentejas.class).to eq(AlimentosRicosEnCarbohidratos)
  			expect(@lentejas.class.superclass).to eq(Cnutrientes)
  			expect(@lentejas.instance_of? AlimentosRicosEnCarbohidratos).to eq(true)
  			expect(@lentejas.is_a? AlimentosRicosEnCarbohidratos).to eq(true)
  		end
  		it"Papas"do
  			expect(@papas.class).to eq(AlimentosRicosEnCarbohidratos)
  			expect(@papas.class.superclass).to eq(Cnutrientes)
  			expect(@papas.instance_of? AlimentosRicosEnCarbohidratos).to eq(true)
  			expect(@papas.is_a? AlimentosRicosEnCarbohidratos).to eq(true)
  		end
  	end
  end
    describe VerdurasyHortalizas do
  	before :each do
  		  @tomate = VerdurasyHortalizas.new("Tomate", 1.0, 3.5, 0.2)
  		  @cebolla = VerdurasyHortalizas.new("Cebolla", 1.3, 5.8, 0.3)
  		  @calabaza = VerdurasyHortalizas.new("Calabaza", 1.1, 4.8, 0.1)
  	end 
  	context "Pruebas para Verduras y Hortalizas"do
  		it"Tomate"do
  			expect(@tomate.class).to eq(VerdurasyHortalizas)
  			expect(@tomate.class.superclass).to eq(Cnutrientes)
  			expect(@tomate.instance_of? VerdurasyHortalizas).to eq(true)
  			expect(@tomate.is_a? VerdurasyHortalizas).to eq(true)
  		end
  		it"Cebolla"do
  			expect(@cebolla.class).to eq(VerdurasyHortalizas)
  			expect(@cebolla.class.superclass).to eq(Cnutrientes)
  			expect(@cebolla.instance_of? VerdurasyHortalizas).to eq(true)
  			expect(@cebolla.is_a? VerdurasyHortalizas).to eq(true)
  		end
  		it"Calabaza"do
  			expect(@calabaza.class).to eq(VerdurasyHortalizas)
  			expect(@calabaza.class.superclass).to eq(Cnutrientes)
  			expect(@calabaza.instance_of? VerdurasyHortalizas).to eq(true)
  			expect(@calabaza.is_a? VerdurasyHortalizas).to eq(true)
  		end
  	end
  end
  
  describe Frutas do
  	before :each do
  		  @manzana = Frutas.new("Manzana", 0.3, 12.4, 0.4)
  		  @platanos = Frutas.new("Platanos", 1.2, 21.4, 0.2)
  		  @pera = Frutas.new("Pera", 0.5 ,12.7, 0.3)
  	end 
  	context "Frutas"do
  		it"Manzana"do
  			expect(@manzana.class).to eq(Frutas)
  			expect(@manzana.class.superclass).to eq(Cnutrientes)
  			expect(@manzana.instance_of? Frutas).to eq(true)
  			expect(@manzana.is_a? Frutas).to eq(true)
  		end
  		it"Platanos"do
  			expect(@platanos.class).to eq(Frutas)
  			expect(@platanos.class.superclass).to eq(Cnutrientes)
  			expect(@platanos.instance_of? Frutas).to eq(true)
  			expect(@platanos.is_a? Frutas).to eq(true)
  		end
  		it"Pera"do
  			expect(@pera.class).to eq(Frutas)
  			expect(@pera.class.superclass).to eq(Cnutrientes)
  			expect(@pera.instance_of? Frutas).to eq(true)
  			expect(@pera.is_a? Frutas).to eq(true)
  		end
  	end
  end
  
    context "Ordenaciones"do
    before :each do
     
     def bs_for! (array)
        for i in 0..array.size 
          for k in i+1..array.size-1    
            array[i], array[k] = array[k], array[i] if(array[i] > array[k])
          end
        end
        
        array
     end
     
     def bs_each! (array) #con el each
        array.each do
          swap_count = 0
          array.each_with_index do |a, index|
            break if index == (array.length - 1)
            if a > array[index+1]
              array[index],array[index+1] = array[index +1], array[index]
              swap_count += 1
            end
          end
          break if swap_count == 0 
        end
        
        array
     end
     
      @array = [HuevosLacteosyHelados.new("Huevo frito", "14.1", "0.0", "19.5"), HuevosLacteosyHelados.new("Leche vaca", "3.3", "4.8", "3.2"), HuevosLacteosyHelados.new("Yogurt", "3.8", "4.9", "3.8"), CarnesyDerivados.new("Cerdo", "21.5", "0.0", "6.3"), CarnesyDerivados.new("Ternera", "21.1", "0.0", "3.1"), CarnesyDerivados.new("Pollo", "20.6", "0.0", "5.6"), PescadosyMariscos.new("Bacalao", "17.7", "0.0", "0.4"), PescadosyMariscos.new("Atun", "21.5", "0.0", "15.5"), PescadosyMariscos.new("Salmon", "19.9", "0.0", "13.6"), AlimentosGrasos.new("Aceite de oliva", "0.0","0.2", "99.6"), AlimentosGrasos.new("Mantequilla", "0.7", "0.0", "83.2"), AlimentosGrasos.new("Chocolate", "5.3", "47.0", "30.0"), AlimentosRicosEnCarbohidratos.new("Azucar", "0.0", "99.8", "0.0"), AlimentosRicosEnCarbohidratos.new("Arroz", "6.8", "77.7", "0.6"), AlimentosRicosEnCarbohidratos.new("Lentejas", "23.5", "52.0", "1.4"), AlimentosRicosEnCarbohidratos.new("Papas", "2.0", "15.4", "0.1"), VerdurasyHortalizas.new("Tomate", "1.0", "3.5", "0.2"), VerdurasyHortalizas.new("Cebolla", "1.3", "5.8", "0.3"), VerdurasyHortalizas.new("Calabaza", "1.1", "4.8", "0.1"), Frutas.new("Manzana", "0.3", "12.4", "0.4"), Frutas.new("Platanos", "1.2", "21.4", "0.2"), Frutas.new("Pera", "0.5" ,"12.7", "0.3")]
    end
    
  end
  end
end