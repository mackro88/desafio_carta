class Carta
    attr_accessor :numero, :pinta
    def initialize (numero, pinta)
        @numero = numero
        @pinta = pinta.sample
    end
    numero = Random.rand(1,13)
    pinta = ['C','D','E','T']
end
