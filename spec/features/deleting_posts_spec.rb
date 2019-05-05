require 'rails_helper.rb'

feature 'Deleting a post' do
  background do
    post = create(:post, caption: 'random caption')
    visit '/'
    find(:xpath, "//a[contains(@href,'posts/1')]").click
    click_link 'Edit Post'
  end
  scenario 'Can delete a single post' do
    click_link 'Delete Post'
    expect(page).to have_content('Post deleted!')
    expect(page).to_not have_content('random caption')   
  end
end