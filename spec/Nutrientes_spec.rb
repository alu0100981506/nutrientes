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

end
