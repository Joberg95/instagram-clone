require 'rails_helper.rb'

  feature 'User can' do
    scenario 'create account' do
      visit '/'
      fill_in "Email",	with: "hola@gmail.com"
      fill_in "Password",	with: "sometext123"
      fill_in "Password_confirmation",	with: "sometext123"
      fill_in "User_name",	with: "hola123" 
    end
  end