require 'rails_helper.rb'

feature 'Edit posts' do
  background do
    post = create(:post)
    visit '/'
    
    find(:xpath, ".//a[@href='/posts/#{post.id}']").click
    click_link 'Edit post'
  end
  scenario 'Can edit a post' do
    attach_file('Image', "spec/files/images/coffee.jpg")
    fill_in "Caption",	with: "someothertext"
    click_button "Update Post"
    expect(page).to have_content("Post Updated")
    expect(page).to have_content("someothertext")
  end
end