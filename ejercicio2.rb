counter = 0 #Contador
pares = [] #Sé que a esta altura aún no veiamos arreglos pero lo hice así para no saturar la terminal a la hora de mostrar los numeros.
impares = [] #Hice ambos ejercicios en un solo ciclo while para simplificar el código.
while counter < 21 
    if counter%2 == 0
        pares << counter
    else
        impares << counter
    end
    counter += 1
end
puts "Los numeros pares del 0 al 20 son:"
p pares
puts "Los numeros impares del 0 al 20 son:" 
p impares


puts "La tabla de multiplicar del 0 al 9 es:"
for i in (0..9) #Este ciclo for iterará del 0 al 9
    puts "#{i*1} #{i*2} #{i*3} #{i*4} #{i*5} #{i*6} #{i*7} #{i*8} #{i*9} #{i*10}"
end

ladrillo = "#"
#Usé times para variar del for, en este caso como times parte desde 0, puse un 6 para que el triangulo tenga 5 niveles
#pero podría ser cualquier numero donde el triangulo tendria N-1 niveles.
6.times do |i| 
    puts "#{ladrillo*i}"
end