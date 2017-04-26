#Métodos de ordenação interna
load 'sortInfo.rb'
load 'auxMeths.rb'


#Ordenação por SELECTIONSORT
def selectionSort
  puts "1 - Informações sobre o método"
  puts "2 - Ordenar uma lista de dados aleatória"
  puts "3 - Voltar"
  print "Opção: "
  op = gets.chomp.to_i
  case op
    when 1
      selectionInfo
    when 2
      array = geraArray

    when 3
      #Sair
    else
      option_error
  end
end


#Ordenação por BUBBLESORT
def bubbleSort
  puts "1 - Informações sobre o método"
  puts "2 - Ordenar uma lista de dados aleatória"
  puts "3 - Voltar"
  print "Opção: "
  op = gets.chomp.to_i
  case op
    when 1
      bubbleInfo
    when 2
      array = geraArray
      aux = 0
      i = 0
      j = 0
      begin_time = Time.now
      for i in 0...array.length
        for j in 0...array.length - 1
          if array[j] > array[j + 1]
            aux = array[j]
            array[j] = array[j + 1]
            array[j + 1] = aux
          end
        end
      end
      end_time = Time.now
      print "\n\nArray Ordenado - #{array} \n\nTempo de Execução: #{(end_time - begin_time)} Segundos\n\n"
    when 3
      #sair
    else
      option_error
  end
end

#Ordenação por QUICKSORT
def quickSort(array)
  puts "\nFUNCIONOU!!! o array é #{array}"
end

#Ordenação por INSERTIONSORT
def insertionSort(array)
  puts "\nFUNCIONOU!!! o array é #{array}"
end

#Ordenação por SHELLSORT
def shellSort(array)
  puts "\nFUNCIONOU!!! o array é #{array}"
end
