require 'rails_helper.rb'

feature 'Creating posts' do
  scenario 'can create post' do
    visit '/'
    click_link 'New post'
    attach_file('Image', "spec/files/images/coffee.jpg")
    fill_in 'Caption', with: '#coffeetime'
    click_button 'Create Post'
    expect(page).to have_content('#coffeetime')
    expect(page).to have_css("img[src*='coffee.jpg']")
  end
end