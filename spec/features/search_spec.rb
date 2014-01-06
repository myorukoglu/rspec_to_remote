require './spec/spec_helper'
feature "Signing in to Shopwell" do

  it 'should let me in with a valid account' do
    visit '/'
    click_link 'Sign In'
    fill_in 'j_username', :with => 'bigmac@gmail.com'
    fill_in 'j_password', :with => 'password123'
    click_button 'Sign In'
    expect(page).to have_content("Find foods you'll love.")
  end

  it 'should not let me in with an invalid account' do
    visit '/'
    click_link 'Sign In'
    click_button 'Sign In'
    expect(page).to have_content("We're unable to sign you in. Please try again.")
  end

end
