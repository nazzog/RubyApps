#Programa para estudo de Pesquisa e Ordenação de Dados
load 'sort.rb'
load 'auxMeths.rb'

system "clear"
i = 1
option = 0
while i > 0
  puts "----------------SOFTWARE PARA PESQUISA E ORDENAÇÃO DE DADOS----------------"
  puts "#{i})MENU\n"
  puts "1 - Ordenação de Dados"
  puts "2 - Pesquisa de Dados"
  puts "0 - Sair"
  print "Opção: "
  option = gets.chomp.to_i
  system "clear"
  case option
    #ORDENAR UMA LISTA DE DADOS ----------------
    when 1
      i += 1
      while i > 1
        puts "----------------SOFTWARE PARA PESQUISA E ORDENAÇÃO DE DADOS----------------"
        puts "#{i-1})MENU > #{i})ORDENAÇÃO DE DADOS\n"
        puts "1 - Ordenação Interna"
        puts "2 - Ordenação Externa"
        puts "0 - Voltar"
        print "Opção: "
        option = gets.chomp.to_i
        system "clear"
        case option
          when 1
            i += 1
            while i > 2
              puts "----------------SOFTWARE PARA PESQUISA E ORDENAÇÃO DE DADOS----------------"
              puts "#{i-2})MENU > #{i-1})ORDENAÇÃO > #{i})ORDENAÇÃO INTERNA\n"
              puts "Escolha o método de ordenação: "
              puts "----- Simples: ---------"
              puts "1 - Selection Sort"
              puts "2 - Insertion Sort"
              puts "3 - Bubble Sort"
              puts "4 - Shell Sort"
              puts "----- Eficientes: ------"
              puts "5 - Quick Sort"
              puts "6 - Heap Sort"
              puts "7 - Merge Sort"
              puts "---- Distribuição: -----"
              puts "8 - Bucket Sort"
              puts "9 - Radix Sort"
              puts "10 - Counting Sort"
              puts "------------------------"
              puts "11 - Tabela Comparativa de Complexidade"
              puts "0 - Voltar"
              print "Opção: "
              option = gets.chomp.to_i
              system "clear"
              case option
                when 1
                  puts "----------------SOFTWARE PARA PESQUISA E ORDENAÇÃO DE DADOS----------------"
                  puts "#{i-2})MENU > #{i-1})ORDENAÇÃO > #{i})ORDENAÇÃO INTERNA > #{i+1})SELECTION SORT\n"
                  selectionSort
                when 2
                  puts "----------------SOFTWARE PARA PESQUISA E ORDENAÇÃO DE DADOS----------------"
                  puts "#{i-2})MENU > #{i-1})ORDENAÇÃO > #{i})ORDENAÇÃO INTERNA > #{i+1})INSERTION SORT\n"
                  insertionSort
                when 3
                  puts "----------------SOFTWARE PARA PESQUISA E ORDENAÇÃO DE DADOS----------------"
                  puts "#{i-2})MENU > #{i-1})ORDENAÇÃO > #{i})ORDENAÇÃO INTERNA > #{i+1})BUBBLE SORT\n"
                  bubbleSort
                when 4
                  puts "----------------SOFTWARE PARA PESQUISA E ORDENAÇÃO DE DADOS----------------"
                  puts "#{i-2})MENU > #{i-1})ORDENAÇÃO > #{i})ORDENAÇÃO INTERNA > #{i+1})SHELL SORT\n"
                  shellSort
                when 5
                  puts "----------------SOFTWARE PARA PESQUISA E ORDENAÇÃO DE DADOS----------------"
                  puts "#{i-2})MENU > #{i-1})ORDENAÇÃO > #{i})ORDENAÇÃO INTERNA > #{i+1})QUICK SORT\n"
                  quickSort
                when 6
                  puts "----------------SOFTWARE PARA PESQUISA E ORDENAÇÃO DE DADOS----------------"
                  puts "#{i-2})MENU > #{i-1})ORDENAÇÃO > #{i})ORDENAÇÃO INTERNA > #{i+1})HEAP SORT\n"
                  heapSort
                when 7
                  puts "----------------SOFTWARE PARA PESQUISA E ORDENAÇÃO DE DADOS----------------"
                  puts "#{i-2})MENU > #{i-1})ORDENAÇÃO > #{i})ORDENAÇÃO INTERNA > #{i+1})MERGE SORT\n"
                  mergeSort
                when 0
                  i -= 1
                else
                  option_error
              end
            end
          when 2
            i += 1
              while i > 2
                puts "----------------SOFTWARE PARA PESQUISA E ORDENAÇÃO DE DADOS----------------"
                puts "#{i-2})MENU > #{i-1})ORDENAÇÃO DE DADOS > #{i})ORDENAÇÃO EXTERNA\n"

                i -= 1
              end
          when 0
            #VOLTAR
            i -= 1
          else
            option_error
        end
      end
    #PESQUISAR DADOS EM UMA LISTA ----------------------------------------------
    when 2
      i += 1
      while i > 1
        puts "----------------SOFTWARE PARA PESQUISA E ORDENAÇÃO DE DADOS----------------"
        puts "#{i-1})MENU > #{i})PESQUISA DE DADOS\n"
        puts "1 - Pesquisa em Memória Primária"
        puts "2 - Pesquisa em Memória Secundária"
        puts "0 - Voltar"
        print "Opção: "
        option = gets.chomp.to_i
        system "clear"
        case option
          when 1
            i += 1
            while i > 2
              puts "----------------SOFTWARE PARA PESQUISA E ORDENAÇÃO DE DADOS----------------"
              puts "#{i-2})MENU > #{i-1})PESQUISA DE DADOS > #{i}) PESQUISA EM MEMÓRIA PRIMÁRIA\n"
              i -= 1
            end
          when 2
            i += 1
            while i > 2
              puts "----------------SOFTWARE PARA PESQUISA E ORDENAÇÃO DE DADOS----------------"
              puts "#{i-2})MENU > #{i-1})PESQUISA DE DADOS > #{i}) PESQUISA EM MEMÓRIA SECUNDÁRIA\n"
              i -= 1
            end
          when 0
            #VOLTAR
            i -= 1
          else
            option_error
        end
      end
    #FIM WHEN 1.2 PESQUISA DE DADOS---------------------------------------------
    #SAIR DO PROGRAMA
    when 0
      puts "PROGRAMA ENCERRADO!\n"
      i -= 1
    else
      option_error
  end
end
