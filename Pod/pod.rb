#Programa para estudo de Pesquisa e Ordenação de Dados

puts "----------------ROGRAMA DE PESQUISA E ORDENAÇÃO DE DADOS----------------"

def option_error
  puts "Opção inválida, digite um número listado no menu."
end

sair = false
option = 0
until sair == true
  puts "O que você deseja fazer?"
  puts "1 - Ordenar um lista de dados."
  puts "2 - Pesquisar dados em uma lista."
  puts "3 - Sair do programa"
  print "Opção: "
  option = gets.chomp.to_i
  case option
    when 1
      puts "1 - Gerar lista randômica."
      puts "2 - Criar uma lista."
      print "Opção: "
      option = gets.chomp.to_i
      case option
        when 1
        print "Digite o tamanho da lista: "
        i = gets.chomp.to_i
          array = Array.new(i) { Random.rand(1..(i*10)) }
          print "Array gerado -> #{array}"
          puts "Escolha o método de ordenação: "
          puts "1 - Bubble Sort."
          puts "2 - Quick Sort."
          puts "3 - Insertion Sort."
          puts "4 - Selection Sort."
          print "Opção: "
          option = gets.chomp.to_i
          case option
            when 1
              puts "BubbleSort(array)."
            when 2
              puts "QuickSort(array)."
            when 3
              puts "InsertionSort(array)."
            when 4
              puts "SelectionSort(array)."
            else
              option_error
          end
        when 2
          puts "Digite os números que deseja ordenar: ex.: (4 6 3 5 9 12 1)"
          array = gets.chomp
          print "Array gerado -> #{array}"
        else
          option_error
      end
    when 2
      puts "Opção 2 escolhida."
    when 3
      sair = true
    else
      option_error
  end
end
