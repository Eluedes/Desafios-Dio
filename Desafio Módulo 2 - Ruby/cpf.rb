require 'cpf_cnpj'

# Solicita o CPF do usuário
puts "Digite o seu CPF para consulta: "
num = gets.chomp # Mantém o CPF como string para evitar perda de zeros

# Define o método que valida o CPF
def validar_cpf(cpf)
  if CPF.valid?(cpf) # Verifica se o CPF é válido
    cpf_formatado = CPF.format(cpf) # Formata o CPF para o padrão XXX.XXX.XXX-XX
    puts "O número do seu CPF é válido: #{cpf_formatado}"
  else
    puts "CPF inválido."
  end
end

# Chama o método passando o CPF digitado pelo usuário
validar_cpf(num)
