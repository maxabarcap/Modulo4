#Requerimento 1

puts "Ingrese el salario actual (USD):"
actual = gets.chomp.to_f
puts "Ingrese el aumento (%):"
aumento = gets.chomp.to_f
def calcular_sueldo(sueldo, incremento)
    if incremento < 15 
        puts "El aumento minimo es 15%, no sea tacaño jefe"
        exit #Termina el programa si el aumento es menor al 15%
    end
    nuevo_sueldo = sueldo*(incremento/100) + sueldo
    puts "El nuevo sueldo de su empleado será de #{nuevo_sueldo} USD"
end
calcular_sueldo(actual, aumento)

#Requerimento 2

puts    "Bienvenido a Adivina el Numero, a continuación ingresa un máximo para adivinar, mientras más alto sea el número
        que ingreses, más difícil será adivinar el número, buena suerte!"
puts    "Ingresa el límite superior, debe ser mayor a 1:"
n = gets.chomp.to_i
def adivina(maximo)
    intento = 0
    counter = 0
    numero_ganador = rand(1..maximo)
    while intento != numero_ganador
        puts "Adivina el numero!"
        intento = gets.chomp.to_i
        counter += 1
        if intento == numero_ganador
            puts "Has adivinado el número en #{counter} intentos!"
        else
            puts "#{intento} no es el numero, sigue intentado."
        end
    end
end
adivina(n)

#Requerimento 3

def formula_imc(valor1, valor2)
    imc = valor1 / valor2**2
end
def calcular_imc(imc)
    puts("Tu índice de masa corporal es => #{imc}")
    if imc < 18.5
        puts "El índice calculado es Bajo de peso"
    elsif imc <= 18.5 || imc <= 24.9
        puts "El índice calculado es Normal"
    elsif imc <= 25.0 || imc <= 29.9
        puts "El índice calculado es Sobrepeso"
    else
        puts "El índice calculado es Obesidad"
        if imc <= 34.9
            puts "La Obesidad es Moderada"
        elsif imc <= 39.9
            puts "La Obesidad es Severa"
        else
            puts "La Obesidad es Muy Severa"
        end
    end
end
puts("***¡Bienvenido/a al sistema de cálculo IMC!***")
puts "Ingresa tu peso en Kilogramos: "
peso = gets.chomp.to_f
puts "Ingresa tu altura expresada en metros: "
altura = gets.chomp.to_f
resultado = calcular_imc(formula_imc(peso, altura))
puts(resultado)
