require 'rails_helper.rb'

feature 'Deleting a post' do
  background do
    post = create(:post, caption: 'random caption')
    visit '/'
    find(:xpath, ".//a[@href='/posts/#{post.id}']").click
    click_link 'Edit post'
  end
  scenario 'Can delete a single post' do
    click_link 'Delete Post'
    expect(page).to have_content('Post deleted!')
    expect(page).to_not have_content('random caption')   
  end
end