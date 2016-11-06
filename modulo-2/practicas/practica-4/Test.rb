class Persona2
  attr_accessor :name, :notebook
  @@cantidad = 2
  
  def self.cantidad()
    return @@cantidad
  end
  
end

puts "inicio"

aki = Persona2.new
aki.name = "Aki"
aki.notebook = "macbook pro"
p aki

yuri = Persona2.new
yuri.name = "Yuri"
yuri.notebook = "hp"
p yuri

puts Persona2.cantidad

puts "fin"