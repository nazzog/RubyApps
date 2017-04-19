#Métodos de ordenação interna
require 'benchmark'
#Ordenação por BUBBLESORT
def bubbleSort(array)
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
  return print "#{array} \n Executado em: #{(end_time - begin_time)} Segundos"
end

#Ordenação por QUICKSORT
def quickSort(array)
  puts "FUNCIONOU!!! o array é #{array}"
end

#Ordenação por INSERTIONSORT
def insertionSort(array)
  puts "FUNCIONOU!!! o array é #{array}"
end

#Ordenação por SELECTIONSORT
def selectionSort(array)
  puts "FUNCIONOU!!! o array é #{array}"
end

#Ordenação por SHELLSORT
def shellSort(array)
  puts "FUNCIONOU!!! o array é #{array}"
end
