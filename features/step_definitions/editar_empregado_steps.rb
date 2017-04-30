Dado(/^que esteja na pagina inicial logada do site ORANGEHRM$/) do
	step "que esteja na home do site ORANGEHRM"
	step "acesso o site com um usuario valido"
end


Quando(/^pesquiso um empregado por um id "([^"]*)"$/) do |id|
  click_link ('menu_pim_viewPimModule')
# Sleep para esperar o menu carregar
  sleep(1.5)
  click_link('menu_pim_viewEmployeeList')
# ID do empregado para pesquisar
  fill_in('empsearch_id', :with=> id )
  click_button('searchBtn')
end

Entao(/^empregado deve ser exibido com mesmo id "([^"]*)"$/) do |id|
	assert_text("#{id}")
end

Dado(/^que tenha pesquisado um empregado pelo id "([^"]*)"$/) do |id2|
#Step já implementado de login
	step %Q(que esteja na pagina inicial logada do site ORANGEHRM)
#Step já implementado de busca de empregado
	step %Q(pesquiso um empregado por um id "#{id2}")
# Esperar a pesquisa ser realizada
	sleep (2)
end

Quando(/^seleciono o empregado desejado id "([^"]*)"$/) do |id2|
	click_link("#{id2}")
end

Quando(/^altero os dados desejados do empregado$/) do
	click_button('btnSave')
	fill_in('personal_txtEmpMiddleName', :with=> 'James' )
	fill_in('personal_txtLicenNo', :with=> '35')
	fill_in('personal_txtLicExpDate', :with=> '2021-12-12')
	choose('personal_optGender_1')
	select('Single', :from=> 'personal_cmbMarital')
	select('British', :from=> 'personal_cmbNation')
	fill_in('personal_DOB', :with=> '1917-10-11')
	click_button('btnSave')
end

Entao(/^dados devem ser editado com sucesso$/) do
	assert_text('Successfully Saved')
end