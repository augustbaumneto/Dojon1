#language: pt
#encoding: utf-8

@exercicio2
Funcionalidade: Editar Empregado
	Eu como usuário
	Quero poder editar empregados já cadastrados no site
	Para poder atualizar as informações dos mesmos

	@teste1
	Cenario: pesquisar empregado
		Dado que esteja na pagina inicial logada do site ORANGEHRM
		Quando pesquiso um empregado por um id "0015"  #inserir id para pesquisa
		Entao empregado deve ser exibido com mesmo id "0015"  #inserir mesmo id para pesquisa
#Testar com o id direto
	@teste2
	Cenario: editar empregado
		Dado que tenha pesquisado um empregado pelo id "0010"	#inserir id para edição
		Quando seleciono o empregado desejado id "0010"			#inserir mesmo id para edição 
		E altero os dados desejados do empregado
		Entao dados devem ser editado com sucesso

