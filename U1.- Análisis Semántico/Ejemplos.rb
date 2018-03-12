
#Cosas a tomar en cuenta: Ruby termina su ejecución en cuanto encuentra el primer error

# 1 Suma de cadenas->Conversión explícita
def sumar(x,y)
  puts 'La respuesta es: '
 return x + y
end

#2 Restar un número a una cadena->operación no soportada
 def restar(x,y)
     puts 'La respuesta es: '
  return x - y
 end

#3 Sensible a mayúsuculas
print "Ingresa una operación: "
opcion = gets.chomp #todo es String

#4 Multiplicar cadena
def multiplicar(x)
  puts 'La respuesta es: '
  return x*10
end

#5 Intentemos llamar a un función con parámetros faltantes
#sumar(2,)

case opcion
when "sumar"
 puts 'Ingresa dos números'
 n1 = gets
 n2 = gets
 sumar(n1,n2)
when "restar"
 puts 'Ingresa dos números'
 n1 = gets
 n2 = gets
 restar(n1,n2)
when "sumarS"
 puts 'Ingresa dos números'
 n1 = gets
 n2 = gets
sumarS(n1,n2)
when 'multiplicar'
  puts 'Ingresa un mensaje'
  n1=gets
  multiplicar(n1)
  else 
 puts 'Ingresa una opción válida'
 end

#SEGUNDA PARTE
#6 Manipulemos arreglos, podemos declarar variables separándolas por comas
arrTres=[]
arr=[1,2,arrTres,4,'5']
arrDos=[6,7,8,9,5] #ruby siempre retorna el último valor

#7 error de variable no incializada, la inicializamos
#varn=4
#100+varn  #undefined

#8 ruby toma el último valor asignado y permite variables repetidas sin tipado
varn=4
varn=14
100+varn 

#9 sumemos" arreglos, solo termina uniendo todos los elementos en otro arreglo
arr+arrDos

#10 no se puede iterar desde float
u=10.3
l=100
for i in 10.3..100
puts "#{i}"
end

#11 intentemos sumar un par de elementos de ambos array, el segundo no existe y marca error, dice que nil no puedo ser convertido algún número
arr[0]+arrDos[8]

#12 Este método permite sumar todos los números de un array, intentemos con el primero
arr.inject(:+) #Array can't be coerced into Fixnum

#13 marcará error por no ser homogéneo, sin embargo funciona con el otros
arrDos.inject(:+)

#14 realicemos algunas comparaciones con operadores relacionales
arr[0]>arrDos[2]
arr[4]==arrDos[4] #false a menos que se convierta un elemento