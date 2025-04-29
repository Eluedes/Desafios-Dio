# Exibe o título da calculadora
puts "==== CALCULADORA ELETRÔNICA ===="

# Loop principal para realizar as operações
loop do
  # Exibe o menu de operações para o usuário
  puts "Qual operação você quer fazer?"
  puts "1 - Soma."
  puts "2 - Subtração."
  puts "3 - Multiplicação."
  puts "4 - Divisão."
  puts "0 - Sair."

  # Lê a escolha do usuário
  escolha = gets.chomp.to_i

  # Se o usuário escolher a opção 0 (sair), encerra o loop
  break if escolha == 0

  # Solicita os dois números para a operação
  puts "Qual o primeiro número?"
  num1 = gets.chomp.to_i
  puts "Qual o segundo número?"
  num2 = gets.chomp.to_i

  # Realiza a operação de acordo com a escolha do usuário
  case escolha
  when 1
    # Soma
    s = num1 + num2
    puts "#{num1} + #{num2} = #{s}"
  when 2
    # Subtração
    su = num1 - num2
    puts "#{num1} - #{num2} = #{su}"
  when 3
    # Multiplicação
    mu = num1 * num2
    puts "#{num1} * #{num2} = #{mu}"
  when 4
    # Divisão (com verificação de divisão por zero)
    if num2 != 0
      d = num1 / num2
      puts "#{num1} / #{num2} = #{d}"
    else
      puts "ERRO: Divisão por zero não é permitida!"
    end
  else
  end
  # Encerra o loop após realizar uma operação
  break
end

# Mensagem de saída após encerrar o loop
puts "Calculadora encerrada. Até logo!"
