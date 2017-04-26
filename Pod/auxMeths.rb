#Métodos auxiliares

def option_error
  puts "Opção inválida, digite um número listado no menu."
end

def geraArray
  print "\nDigite o número de elementos que deseja ordenar: "
  tam = gets.chomp.to_i
  array = Array.new(tam) {
    Random.rand(1..(tam*10))
  }
  print "\nArray gerado -> #{array}"
  return array
end
