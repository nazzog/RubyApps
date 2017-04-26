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
        puts "#{i-1})MENU > #{i})ORDENAÇÃO DE DADOS\n"
        puts "1 - Ordenação Interna"
        puts "2 - Ordenação Externa"
        puts "3 - Voltar"
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
              puts "1 - Bubble Sort"
              puts "2 - Quick Sort"
              puts "3 - Insertion Sort"
              puts "4 - Selection Sort"
              puts "5 - Voltar"
              print "Opção: "
              option = gets.chomp.to_i
              system "clear"
              case option
                when 1
                  puts "----------------SOFTWARE PARA PESQUISA E ORDENAÇÃO DE DADOS----------------"
                  puts "#{i-2})MENU > #{i-1})ORDENAÇÃO > #{i})ORDENAÇÃO INTERNA > #{i+1})BUBBLE SORT\n"
                  bubbleSort
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
                when 5
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
          when 3
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
        puts "3 - Voltar"
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
          when 3
            #VOLTAR
            i -= 1
          else
            option_error
        end
      end
    #FIM WHEN 1.2 PESQUISA DE DADOS---------------------------------------------
    #SAIR DO PROGRAMA
    when 3
      puts "PROGRAMA ENCERRADO!\n"
      i -= 1
    else
      option_error
  end
end
