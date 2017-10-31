#Métodos de ordenação interna
load 'sortInfo.rb'
load 'auxMeths.rb'


#Ordenação por SELECTIONSORT
def selectionSort
  puts "1 - Informações sobre o método"
  puts "2 - Ordenar uma lista de dados aleatória"
  puts "0 - Voltar"
  print "Opção: "
  op = gets.chomp.to_i
  case op
    when 1
      selectionInfo
    when 2
      #Passa sempre o menor valor do vetor para a primeira posição, depois o segundo,
      #e assim sucessivamente
      array = geraArray
      i = 0
      j = 0
      min = 0
      aux = 0
      begin_time = Time.now
      #Laço externo para controle do índice inicial
      for i in 0...array.length-1
        min = i
        #Laço interno que percorre o array em busca do indice de menor valor
        for j in i+1...array.length
          if array[j] < array[min]
            min = j
          end
        end
        #Se diferentes, encontrado um valor menor e realocado
        if i != min
          aux = array[i]
          array[i] = array[min]
          array[min] = aux
        end
      end
      end_time = Time.now
      print "\n\nArray Ordenado - #{array} \n\nTempo de Execução: #{(end_time - begin_time)} Segundos\n\n"
    when 0
      #Sair
    else
      option_error
  end
end

#Ordenação por INSERTIONSORT
def insertionSort
  puts "1 - Informações sobre o método"
  puts "2 - Ordenar uma lista de dados aleatória"
  puts "0 - Voltar"
  print "Opção: "
  op = gets.chomp.to_i
  case op
    when 1
      insertionInfo
    when 2
      #Recebe um valor e o insere no lugar correto
      array = geraArray
      i = 1
      j = 0
      atual = 0
      begin_time = Time.now
      #Laço externo para controle do índice inicial
      for i in 1...array.length
        #atual recebe o valor que deve ser realocado
        atual = array[i]
        j = i - 1
        #Laço que verifica a posição correta do valor atual
        while ((j >= 0) && (atual < array[j]))
          array[j + 1] = array[j]
          j = j - 1
        end
        #Insere o valor atual na posição correta
        array[j + 1] = atual
      end
      end_time = Time.now
      print "\n\nArray Ordenado - #{array} \n\nTempo de Execução: #{(end_time - begin_time)} Segundos\n\n"
    when 0
      #Sair
    else
      option_error
  end
end

#Ordenação por BUBBLESORT
def bubbleSort
  puts "1 - Informações sobre o método"
  puts "2 - Ordenar uma lista de dados aleatória"
  puts "0 - Voltar"
  print "Opção: "
  op = gets.chomp.to_i
  case op
    when 1
      bubbleInfo
    when 2
      #Seleciona o maior valor e passa para o final do array
      array = geraArray
      aux = 0
      i = 0
      j = 0
      begin_time = Time.now
      #Laço externo para controle do índice inicial
      for i in 0...array.length
        #Laço interno para comparação
        for j in 0...array.length - 1
          #Se maior que o próximo, troca de lugar
          if array[j] > array[j + 1]
            aux = array[j]
            array[j] = array[j + 1]
            array[j + 1] = aux
          end
        end
      end
      end_time = Time.now
      print "\n\nArray Ordenado - #{array} \n\nTempo de Execução: #{(end_time - begin_time)} Segundos\n\n"
    when 0
      #sair
    else
      option_error
  end
end

#Ordenação por SHELLSORT
def shellSort
  puts "1 - Informações sobre o método"
  puts "2 - Ordenar uma lista de dados aleatória"
  puts "0 - Voltar"
  print "Opção: "
  op = gets.chomp.to_i
  case op
    when 1
      shellInfo
    when 2
      # o algoritmo passa várias vezes pela lista dividindo o grupo maior em menores.
      # Nos grupos menores é aplicado o método da ordenação por inserção.
      array = geraArray
      i = 0
      j = 0
      valor = 0
      gap = 1
      begin_time = Time.now
      while (gap < array.length)
        gap = 3*gap+1
      end
      #Laço que separa o array em partes menores (gap)
      while (gap > 1)
        gap /= 3
        #Laço que ordena o GAP por Insertion Sort
        for i in gap...array.length
          valor = array[i]
          j = i - gap
          while (j >=0 && valor < array[j])
            array[j + gap] = array[j]
            j -= gap
          end
          array[j + gap] = valor
        end
      end
      end_time = Time.now
      print "\n\nArray Ordenado - #{array} \n\nTempo de Execução: #{(end_time - begin_time)} Segundos\n\n"
    when 0
      #Sair
    else
      option_error
  end
end

#Ordenação por QUICKSORT
def quickSort
  puts "1 - Informações sobre o método"
  puts "2 - Ordenar uma lista de dados aleatória"
  puts "0 - Voltar"
  print "Opção: "
  op = gets.chomp.to_i
  case op
    when 1
      selectionInfo
    when 2
      #Método de ordenação por Divisão e Conquista
      #Utiliza um elemento como pivô(geralmente o médio) e separa os menores à sua esquerda
      #e os maiores à sua direita
      #Utilizando recursão até que chegue a um elemento do vetor
      array = geraArray
      aux = 0
      comeco = array[0]
      fim = array[array.length-1]
      i = comeco
      j = fim
      pivot = array[(comeco+fim)/2]
      begin_time = Time.now
      while (i <= j)
        while (array[i] < pivot)
          i += 1
        end
        while (array[j] > pivot)
          j -= 1
        end
        if(i <= j)
          aux = array[i]
          array[i] = array[j]
          array[j] = aux
          i += 1
          j -= 1
        end
      end
      if (j > comeco)
        quickSort
      end
      if (i < fim)
        quickSort
      end
      end_time = Time.now
      print "\n\nArray Ordenado - #{array} \n\nTempo de Execução: #{(end_time - begin_time)} Segundos\n\n"
    when 0
      #Sair
    else
      option_error
  end
end

#Ordenação por HEAPSORT
def heapSort
  puts "1 - Informações sobre o método"
  puts "2 - Ordenar uma lista de dados aleatória"
  puts "0 - Voltar"
  print "Opção: "
  op = gets.chomp.to_i
  case op
    when 1
      selectionInfo
    when 2
      array = geraArray
      i = 0
      j = 0
      min = 0
      aux = 0
      begin_time = Time.now
      for i in 0...array.length-1
        min = i
        for j in i+1...array.length
          if array[j] < array[min]
            min = j
          end
        end
        if i != min
          aux = array[i]
          array[i] = array[min]
          array[min] = aux
        end
      end
      end_time = Time.now
      print "\n\nArray Ordenado - #{array} \n\nTempo de Execução: #{(end_time - begin_time)} Segundos\n\n"
    when 0
      #Sair
    else
      option_error
  end
end

#Ordenação por MERGESORT
def mergeSort
  puts "1 - Informações sobre o método"
  puts "2 - Ordenar uma lista de dados aleatória"
  puts "0 - Voltar"
  print "Opção: "
  op = gets.chomp.to_i
  case op
    when 1
      selectionInfo
    when 2
      #consiste em Dividir (o problema em vários sub-problemas e resolver esses
      #sub-problemas através da recursividade) e Conquistar (após todos os sub-problemas
      #terem sido resolvidos ocorre a conquista que é a união das resoluções dos sub-problemas)
      array = geraArray
      i = 0
      j = 0
      min = 0
      aux = 0
      begin_time = Time.now
      for i in 0...array.length-1
        min = i
        for j in i+1...array.length
          if array[j] < array[min]
            min = j
          end
        end
        if i != min
          aux = array[i]
          array[i] = array[min]
          array[min] = aux
        end
      end
      end_time = Time.now
      print "\n\nArray Ordenado - #{array} \n\nTempo de Execução: #{(end_time - begin_time)} Segundos\n\n"
    when 0
      #Sair
    else
      option_error
  end
end

#Ordenação por BUCKETSORT
def bucketSort
  puts "1 - Informações sobre o método"
  puts "2 - Ordenar uma lista de dados aleatória"
  puts "0 - Voltar"
  print "Opção: "
  op = gets.chomp.to_i
  case op
    when 1
      selectionInfo
    when 2
      array = geraArray
      i = 0
      j = 0
      min = 0
      aux = 0
      begin_time = Time.now
      for i in 0...array.length-1
        min = i
        for j in i+1...array.length
          if array[j] < array[min]
            min = j
          end
        end
        if i != min
          aux = array[i]
          array[i] = array[min]
          array[min] = aux
        end
      end
      end_time = Time.now
      print "\n\nArray Ordenado - #{array} \n\nTempo de Execução: #{(end_time - begin_time)} Segundos\n\n"
    when 0
      #Sair
    else
      option_error
  end
end

#Ordenação por RADIXSORT
def radixSort
  puts "1 - Informações sobre o método"
  puts "2 - Ordenar uma lista de dados aleatória"
  puts "0 - Voltar"
  print "Opção: "
  op = gets.chomp.to_i
  case op
    when 1
      selectionInfo
    when 2
      array = geraArray
      i = 0
      j = 0
      min = 0
      aux = 0
      begin_time = Time.now
      for i in 0...array.length-1
        min = i
        for j in i+1...array.length
          if array[j] < array[min]
            min = j
          end
        end
        if i != min
          aux = array[i]
          array[i] = array[min]
          array[min] = aux
        end
      end
      end_time = Time.now
      print "\n\nArray Ordenado - #{array} \n\nTempo de Execução: #{(end_time - begin_time)} Segundos\n\n"
    when 0
      #Sair
    else
      option_error
  end
end

#Ordenação por COUNTINGSORT
def countingSort
  puts "1 - Informações sobre o método"
  puts "2 - Ordenar uma lista de dados aleatória"
  puts "0 - Voltar"
  print "Opção: "
  op = gets.chomp.to_i
  case op
    when 1
      selectionInfo
    when 2
      array = geraArray
      i = 0
      j = 0
      min = 0
      aux = 0
      begin_time = Time.now
      for i in 0...array.length-1
        min = i
        for j in i+1...array.length
          if array[j] < array[min]
            min = j
          end
        end
        if i != min
          aux = array[i]
          array[i] = array[min]
          array[min] = aux
        end
      end
      end_time = Time.now
      print "\n\nArray Ordenado - #{array} \n\nTempo de Execução: #{(end_time - begin_time)} Segundos\n\n"
    when 0
      #Sair
    else
      option_error
  end
end
