# language: pt
# encoding: utf-8

Funcionalidade: Consulta de dados de um endereço a partir de um CEP.

@positivo
Cenario: CEP valido
  Dado um "cep_valido" pela api get
  Então espero visualizar o codigo do IBGE

@negativo
Cenario: CEP invalido
  Dado um "cep_invalido" pela api get
  Então espero visualizar uma mensagem de erro
  

