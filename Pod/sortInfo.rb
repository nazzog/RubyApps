#Informações sobre os métodos de ordenação
#– C(n): número de comparações entre chaves
#– M(n): número de movimentos ou trocas de registros
#Informações sobre Selection Sort
def selectionInfo
  puts "\n"
  puts "Um dos algoritmos mais simples, tem como ponto forte o fato de que ele
realiza poucas operações de SWAP."

  puts "\n"
  puts "Análise da Complexibilidade:"
  puts "O Selection Sort compara a cada interação um elemento com os outros,
visando encontrar o menor. Dessa forma, podemos entender que não existe
um melhor caso mesmo que o vetor esteja ordenado ou em ordem inversa serão
executados os dois laços do algoritmo, o externo e o interno."
  puts "Número de comparações entre chaves:"
  puts "C(n) = O(n^2)"
  puts "Número de movimentos ou trocas de registros:"
  puts "M(n) = O(n)"

  puts "\n"
  puts "Observações:"
  puts ">Vantagens:"
  puts " - É um dos métodos mais simples de ordenação existentes."
  puts " - Simples de ser implementado."
  puts " - Por não usar um vetor auxiliar para realizar a ordenação, ele ocupa menos memória."
  puts " - Ele é uns dos mais velozes na ordenação de vetores de tamanhos pequenos."
  puts " - Para arquivos com registros muito grandes e chaves pequenas, este deve
ser o método utilizado."
  puts " - Com chaves do tamanho de uma palavra, este método torna-se bastante
interessante para arquivos pequenos."

  puts ">Desvantagens:"
  puts " - Ele é um dos mais lentos para vetores de tamanhos grandes."
  puts " - O fato do arquivo já estar ordenado não ajuda em nada pois o custo
continua quadrático."
  puts " - O algoritmo não é estável, pois ele nem sempre deixa os registros com
chaves iguais na mesma posição relativa."
  puts "\nPRESSIONE ENTER PARA VOLTAR..."
  gets
end

def bubbleInfo
  puts "INFORMANDO"
end
