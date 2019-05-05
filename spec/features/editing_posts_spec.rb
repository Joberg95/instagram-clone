require 'rails_helper.rb'

feature 'Edit posts' do
  background do
    post = create(:post)
    visit '/'
    
    find(:xpath, ".//a[@href='/posts/#{post.id}']").click
    click_link 'Edit post'
  end
  scenario 'Can edit a post' do
    fill_in "caption",	with: "someothertext"
    click_button "Update post"
    expect(page).to have_content("Post Updated")
    expect(page).to have_content("someothertext")
  end
end