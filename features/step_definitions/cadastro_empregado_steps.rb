Dado(/^que esteja na home do site ORANGEHRM$/) do
  visit 'http://opensource.demo.orangehrmlive.com'
end

Quando(/^acesso o site com um usuario valido$/) do
  fill_in('txtUsername',:with=>'admin') 
  fill_in('txtPassword',:with=>'admin')
  click_button('btnLogin')
end

Quando(/^acessar a secao de cadastrato de usuario$/) do
  click_link ('menu_pim_viewPimModule')
# Sleep para esperar o menu carregar
  sleep(1.5)
  click_link('menu_pim_addEmployee')
end

Quando(/^preencher os campos obrigatorios com os dados do empregado$/) do
  fill_in('firstName', :with=> 'Phil')
  fill_in('lastName', :with=> 'Collins')
end

Quando(/^clicar no botao Save$/) do
  click_button('btnSave')
end

Entao(/^o empregado deve ser cadastrado$/) do
  assert_text('Personal Details')
end