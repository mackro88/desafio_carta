## Crear la clase carta con los atributos numero y pinta (o color)

class Carta

    ##Agregar los getters y setters a ambos atributos.
    attr_accessor :numero, :pinta

    ##Crear el constructor de la clase carta que le permita recibir un numero del 1 al 13 y la pinta que está indicada por una sola letra.
    def initialize 
        @numero = Random.rand(1..13)
        @pinta = ['C','D','E','T'].sample
    end 
end

## Probar la clase creando un arreglo con 5 cartas.

prueba = []
5.times do |i|
    carta = Carta.new
    prueba << carta
end


puts prueba 


=begin

##Ver cuántos y qué contienen los elementos dentro de "prueba"

puts "Hay #{prueba.count} elementos en la prueba"

prueba.each do |c|
    puts "Carta#{c} es #{c.numero} #{c.pinta}"
end

=end