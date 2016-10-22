class Persona
  #Persona debe tener atributos: nombre y apellido y deben ser accesibles
  #Persona debe almacenar todas sus instancias para poder hacer seguimiento
  attr_accessor :nombre, :apellido
  @@personasArr = Array.new(0)

  #Inicializador de instancias
  def initialize(nombre, apellido)#Debe recibir dos parametros: nombre y apellido
    @nombre = nombre
    @apellido = apellido
    @@personasArr.push(self)    
  end

  #La clase debe tener tener un search por apellido
  def self.search(apellido)
    #puts "search method invoked!"
    @@personasArr.select{ |persona| persona.apellido.downcase == apellido.downcase }
  end

  #Tener un método que retorne el nombre y el apellido de la persona.
  def to_s
    return nombre + " " + apellido
  end
end

#Esto es lo que va a hacer el rspec comentar para correr
#puts "Inicio del Programa"

#p1 = Persona.new("Juan", "Perez")
#p2 = Persona.new("Juan", "Benitez")
#p3 = Persona.new("Juana", "Perez")
#p4 = Persona.new("Romina", "Benitez")

#puts "Persona.search(\"Perez\")"
#puts Persona.search("Perez")
#puts Persona.search("Perez").size

#puts "Fin del Programa"

# Debería imprimir
# => Juan Perez
# => Juana Perez
