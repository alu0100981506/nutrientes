require "spec_helper"

RSpec.describe Nutrientes do
  before :each do
	@prueba = Cnutrientes.new("Huevo Frito", "14.1", "0.0")
 end

  it "has a version number" do
    expect(Nutrientes::VERSION).not_to be nil
  end

#  it "does something useful" do
#    expect(false).to eq(true)
#  end






end
