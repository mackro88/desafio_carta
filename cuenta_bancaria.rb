## Crear la clase con el nombre CuentaBancaria
class CuentaBancaria

    ## Los métodos getter y setter para el atributo nombre_de_usuario
    attr_accessor :nombre_de_usuario

    ## Crear el constructor que reciba el nombre_usuario y numero_de_cuenta y lo asigne a los atributos
    ## Agregar un tercer parámetro opcional al constructor que permita establecer si una cuenta es VIP (1pto), este valor puede ser 1 o 0. Por defecto será 0.
    def initialize (nombre_de_usuario, numero_de_cuenta, cuenta_vip = 0)
        nombre_de_usuario = nombre_de_usuario.to_s

        ## Levantar una excepción del tipo RangeError si el atributo numero_de_cuenta tiene un número de dígitos distinto a 8
        digitos_cuenta = numero_de_cuenta.digits
        raise RangeError,  "El número de cuenta debe tener 8 dígitos" if digitos_cuenta.length != 8
            @nombre_de_usuario = nombre_de_usuario
            @numero_de_cuenta = numero_de_cuenta
            @cuenta_vip = cuenta_vip
    end 

    ## Crear un método llamado numero_de_cuenta que devuelva el número de cuenta con un prefijo '1-' si es vip y '0-' si no lo es. Ejemplo: si la cuenta es VIP y el número 00112233, el método debería devolver '1-00112233' (1punto)
    def numero_de_cuenta
        puts "El número de cuenta de #{@nombre_de_usuario} es #{@cuenta_vip}-#{@numero_de_cuenta}"
    end
end

