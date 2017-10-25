require "spec_helper"


RSpec.describe Nutrientes do
  before :each do
	@prueba = Cnutrientes.new("Huevo Frito", "14.1", "0.0", "19.5")
 end

  it "has a version number" do
    expect(Nutrientes::VERSION).not_to be nil
  end

#  it "does something useful" do
#    expect(false).to eq(true)
#  end

 it "Obtener el nombre del alimento" do
	expect(@prueba.Nombre).to eq("Huevo Frito")
 end

 it "Obtener la cantidad de proteınas de un alimento" do
	expect(@prueba.Proteinas).to eq("14.1")
 end

 it "Obtener la cantidad Glucidos de un alimento" do
	expect(@prueba.Glucidos).to eq("0.0")
 end

 it "Obtener la cantidad de Grasas de un alimento" do
	expect(@prueba.Lipidos).to eq("19.5")
 end


end
