require 'benchmark'


puts "////////////////////////////RUBY CALCULATOR//////////////////////////"
puts "Ingresa una expresi�n"
es= gets.chomp

t1 = Benchmark.realtime do
nums=es.scan /^\(\d+[\+\-\\*\/]+\d+\)[\+\-\\*\/]+\d+/

res= eval(es)
puts "El resultado de #{nums} es: #{res}"


end
puts "/////////////////////////////////////////////////////////////////////"
puts "------------------------------------------------"

puts "La ejecuci�n tom� "+(t1*1000).to_s+" milisegundos"

