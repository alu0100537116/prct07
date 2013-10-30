require "lib/fraccion.rb"

describe Fraccion do
  before :each do
    @f1 = Fraccion.new(6,3)
    @f2 = Fraccion.new(4,2)
    @f3 = Fraccion.new(6,2)
    @mod1 = Fraccion.new(1,3)
    @mod2 = Fraccion.new(1,2)
  end    
    
  describe "# Está almacenado en f1" do
    it "Almacena la variable" do
      @f1.num.should eq(6) 
    end
    it "Se almacena correctamente la coordenada Y" do
      @f1.denom.should eq(3)  
    end
  end
 
  describe "# Fracciones iguales" do
    it "Fracciones son iguales" do
      (@f1==@f2).should eq(true) 
    end
  end
  
  describe "# Valor absoluto" do
    it "Valor absoluto de una fraccion" do
        @f1.abs.should eq(Fraccion.new(2,1))
    end
  end
  
  describe "# Reciproco de una funcion" do
    it "Calculo de reciproco" do
      @f1.reciprocal.to_s.should eq(Fraccion.new(3,6).to_s) 
    end
  end
  
  describe "# Opuesto de una fraccion" do
    it "Calculo del opuesto" do
      @f1.opuesto.to_s.should eq(Fraccion.new(-6,3).to_s) 
    end
  end
  
  describe "#Suma de dos fracciones" do
    it "Calculo de la suma" do
      (@f1+@f2).should eq(Fraccion.new(4,1).to_s) 
    end
  end
  
  describe "# Resta de dos fracciones" do
    it "Calculo de la resta" do
      (@f1-@f2).should eq(Fraccion.new(0,1).to_s) 
    end
  end
  
  describe "# Multiplicacion de dos fracciones" do
    it "Calculo de la multiplicacion" do
      (@f1*@f2).to_s.should eq(Fraccion.new(4,1).to_s) 
    end
  end
  
  describe "# Division de dos  fracciones" do
    it "Calculo de la division" do
      (@f1/@f2).to_s.should eq(Fraccion.new(1,1).to_s) 
    end
  end
  
  describe "# Resto de una fraccion" do
    it "Calculo del resto" do
      (@f1&@f2).to_s.should eq(Fraccion.new(0,1).to_s) 
    end
  end
  
   describe "# Modulo <=> " do
      it "Calculo del modulo <=>"
	(@f1<=>@f2)
    
    end
  end   
  
end