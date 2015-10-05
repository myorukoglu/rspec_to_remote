require './spec/spec_helper'
feature "Signing in to ArtWeb" do

  it 'should let me in with a valid account' do
    visit 'users/sign_in'

    fill_in 'user[email]', :with => 'Murat@breakthrough.com'
    fill_in 'user[password]', :with => 'asdfasdf'
    
    click_button "Log in"
    expect(page).to have_content("Artist of the Month")
  end

  it 'should not let me in with an invalid account' do
    visit 'users/sign_in'

    fill_in 'user[email]', :with => 'a@a.com'
    fill_in 'user[password]', :with => 'asdfasdf'

    click_button "Log in"
    expect(page).to have_content("Invalid email or password")
  end

end
