require "spec_helper"


RSpec.describe Nutrientes do
  before :each do
	@prueba = Cnutrientes.new("Huevo Frito", "14.1", "0.0", "19.5")
 end

  it "has a version number" do
    expect(Nutrientes::VERSION).not_to be nil
  end


 it "Obtener el nombre del alimento" do
	expect(@prueba.nombre).to eq("Huevo Frito")
 end

 it "Obtener la cantidad de proteınas de un alimento" do
	expect(@prueba.proteinas).to eq("14.1")
 end

 it "Obtener la cantidad Glucidos de un alimento" do
	expect(@prueba.glucidos).to eq("0.0")
 end

 it "Obtener la cantidad de Grasas de un alimento" do
	expect(@prueba.lipidos).to eq("19.5")
 end

 it "Obtener el alimento formateado" do
	expect(@prueba.to_s).to eq("[Huevo Frito, 14.1, 0.0, 19.5]")
 end


 it "Obtener el valor energetico de un alimento" do
	expect(@prueba.val_ener).to eq(231.9)
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
    end
    
    
  end
  
  end