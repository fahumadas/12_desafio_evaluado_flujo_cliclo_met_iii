#Damos la bienvenida
puts"***¡Bienvenido/a al sistema de calculo IMC!***"

#Solciitamos el ingreso de datos para el calculo del IMC
puts"Ingresa tu peso en kilogramos"
peso = gets.to_f

puts"Ingresa tu altura expresada en metros"
altura = gets.to_f

#Creamos un metodo para calcular el IMC
def formula_imc(valor1, valor2)
    imc = valor1/valor2**2
end

#Creamos una función para evaluar los parámetros del IMC
def calcular_imc(imc)
    puts("Tu índice de masa corporal es => #{imc}")
    if imc < 18.5
    puts "El índice calculado es Bajo de peso"
    elsif imc <= 18.5 || imc <= 24.9
    puts "El índice calculado es Normal"
    elsif imc <= 25.0 || imc <= 29.9
    puts "El índice calculado es Sobrepeso"
    elsif imc >= 30 && imc <=34.9
    puts "El índice calculado es Obesidad Grado I (moderada)"
    elsif imc >= 35 && imc <= 39.5
    puts "El índice calculado es Obesidad Grado II (Severo)"
    elsif imc >= 40
    puts "El índice calculado es Obesidad muy severa"
    end
end

#Mostramos el calculo en la variable resultado,
#donde entregamos al cliente el resultado de su IMC
resultado = calcular_imc(formula_imc(peso, altura))
puts(resultado)




