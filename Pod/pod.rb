#Programa para estudo de Pesquisa e Ordenação de Dados

puts "----------------ROGRAMA DE PESQUISA E ORDENAÇÃO DE DADOS----------------"
puts "O que você deseja fazer?:"
puts "1 - Ordenar um lista de dados."
puts "2 - Pesquisar dados em uma lista."
puts "3 - Sair do programa"
opcao1 = gets.chomp


puts "Digite os números que deseja ordenar: ex.: (4 6 3 5 9 12 1)"
array = gets.chomp

puts "Qual método de ordenação deseja usar?"
metodo_ord = gets.chomp

case metodo_ord
  when "1"
    bubbleSort(array)
  else
    puts "Opção inválida, digite um número listado"
end

#Métodos de ordenação
def bubbleSort(array)
end
