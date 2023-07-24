#El juego consiste en que debes ingresar piedra, papel, o tijera,
#para ganar tienes que coincidir con la elección de la máquina
#En este caso, asumiremos que si el jugador se equivoca no volverá
#a repetir el número erróneo en la nueva oportunidad, 
#ya que no podemos generar ningún tipo de
#persistencia de datos

#Crear el valor con el ARGV
eleccion_del_rango = ARGV[0].to_i

#Elección del computador
numero = rand(eleccion_del_rango)

#Comparar dato ingresado con la eleccion del computador
def comparacion(numero_maquina, rango)
    repetidor = 0
    while repetidor <= rango
        #Elección del jugador
        puts "Escoge un numero entre 0 y #{rango}"
        numero_escogido= STDIN.gets.chomp.to_i
        if numero_escogido == numero_maquina
            puts "Ganaste, los números coinciden"
            break
        elsif numero_escogido != numero_maquina
            puts "Lo siento, debes volver a intentarlo"
            repetidor += 1
        end
    end
end

comparacion(numero, eleccion_del_rango)