def salario_aumentado(salario, incremento)
   nuevo_salario = salario + (salario*incremento/100)
end

puts '¿Cuál es tu salario?'
salario= gets.chomp.to_f

incremento = 10

salario_final = salario_aumentado(salario,incremento)

puts "Su salario de #{salario} aunmentó un #{incremento} y quedó finalmente en #{salario_final}"



