#language: pt
#encoding: utf-8

@exercicio1
Funcionalidade: Cadastrar Empregado
	Eu como usuário
	Quero poder logar no site e cadastrar um novo empregado
	Para poder controlar meus empregados

	Cenario: Logar e cadastrar um novo empregado
		Dado que esteja na home do site ORANGEHRM
		Quando acesso o site com um usuario valido
		E acessar a secao de cadastrato de usuario
		E preencher os campos obrigatorios com os dados do empregado
		E clicar no botao Save
		Entao o empregado deve ser cadastrado