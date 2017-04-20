#Programa para estudo de Pesquisa e Ordenação de Dados
load 'sort.rb'

system "clear"

def option_error
  puts "Opção inválida, digite um número listado no menu."
end

i = 1
option = 0
while i > 0
  puts "----------------SOFTWARE PARA PESQUISA E ORDENAÇÃO DE DADOS----------------"
  puts "#{i})MENU"
  puts "\nO que você deseja fazer?"
  puts "\n1 - Ordenar uma lista de dados."
  puts "2 - Pesquisar dados em uma lista."
  puts "3 - Sair"
  print "Opção: "
  option = gets.chomp.to_i
  system "clear"
  case option
    #ORDENAR UMA LISTA DE DADOS ----------------
    when 1
      i += 1
      while i > 1
        puts "----------------SOFTWARE PARA PESQUISA E ORDENAÇÃO DE DADOS----------------"
        puts "#{i-1})MENU > #{i})ORDENAÇÃO"
        puts "\n1 - Gerar lista randômica."
        puts "2 - Criar uma lista."
        puts "3 - Voltar."
        print "Opção: "
        option = gets.chomp.to_i
        system "clear"
        case option
          when 1
            i += 1
            while i > 2
              puts "----------------SOFTWARE PARA PESQUISA E ORDENAÇÃO DE DADOS----------------"
              puts "#{i-2})MENU > #{i-1})ORDENAÇÃO > #{i})GERADOR"
              print "\nDigite o tamanho da lista: "
              tam = gets.chomp.to_i
              array = Array.new(tam) { Random.rand(1..(tam*10)) }
              print "\nArray gerado -> #{array}"
              puts "\n\nEscolha o método de ordenação: "
              puts "\n1 - Bubble Sort."
              puts "2 - Quick Sort."
              puts "3 - Insertion Sort."
              puts "4 - Selection Sort."
              print "Opção: "
              option = gets.chomp.to_i
              case option
                when 1
                  bubbleSort(array)
                  i -= 1
                when 2
                  puts "QuickSort(array)."
                  i -= 1
                when 3
                  puts "InsertionSort(array)."
                  i -= 1
                when 4
                  puts "SelectionSort(array)."
                  i -= 1
                else
                  option_error
              end
            end
          when 2
            i += 1
            puts "----------------SOFTWARE PARA PESQUISA E ORDENAÇÃO DE DADOS----------------"
            puts "#{i-2})MENU > #{i-1})ORDENAÇÃO > #{i})Criar Lista
            puts "Digite os números que deseja ordenar: ex.: (4 6 3 5 9 12 1)"
            array = gets.chomp
            print "Array gerado -> #{array}"
            i -= 1
          when 3
            #VOLTAR
            i -= 1
          else
            option_error
        end
      end
    #PESQUISAR DADOS EM UMA LISTA ------------
    when 2
      i += 1
      puts "Opção 2 escolhida."
      i -= 1
    #SAIR DO PROGRAMA
    when 3
      i -= 1
    else
      option_error
  end
end
