require 'rails_helper.rb'

feature 'Edit posts' do
  background do
    post = create(:post)
    visit '/'
    find(:xpath, ".//a[@href='/posts/#{post.id}']").click
    expect(page.current_path).to eq(post_path(post))
  end
  scenario 'Can edit a post' do
    fill_in "caption",	with: "sometext"
    click_button "Update post"
    expect(page).to have_content("Post Updated")
    expect(page).to have_content("sometext")
  end
end