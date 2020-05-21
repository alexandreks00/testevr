# encoding: utf-8
# language: pt

Dado("um {string} pela api get") do |cep|
    @ibge = PageAPI.new.request_cep(cep)
end


Então("espero visualizar o codigo do IBGE") do
  puts "Codigo IBGE: #{@ibge}"
end

Então("espero visualizar uma mensagem de erro") do
  puts "Erro: Bad request - 400"
end

