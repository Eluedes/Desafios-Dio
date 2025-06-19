# Inicializa um array vazio para armazenar os números fornecidos pelo usuário
numeros = []

# Loop que será executado 3 vezes, solicitando ao usuário que insira um número
3.times do 
  puts "Digite um número: "  # Exibe uma mensagem pedindo que o usuário insira um número
  num = gets.chomp.to_i      # Lê a entrada do usuário, remove o caractere de nova linha e converte para inteiro
  numeros.push(num)          # Adiciona o número digitado ao array 'numeros'
end

# Usa o método 'map' para criar um novo array onde cada número é elevado à 3ª potência
num_cub = numeros.map do |x|
  x ** 3
end

# Exibe os números elevados à 3ª potência
puts "Os números elevados a 3ª potência são: #{num_cub}"
