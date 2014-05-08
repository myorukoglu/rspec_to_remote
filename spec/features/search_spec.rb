require './spec/spec_helper'
feature "Signing in to test" do

  it 'should land on log in page' do
    visit '/'
    click_link 'Log In'
    expect(page).to have_content("Log in to your Directly account")
  end

  xit 'should let me in with a valid account' do
    visit '/'
    click_link 'log in'
    fill_in 'j_username', :with => 'phua'
    fill_in 'j_password', :with => 'bbb123'
    click_button 'log in'
    expect(page).to have_content("Invalid login information. Please try again. ")
  end

  xit 'should not let me sign up with an existing account' do
    visit '/'
    click_link 'Sign Up'
    fill_in 'name', :with => 'phuong'
    fill_in 'username', :with => 'businessph@yahoo.com'
    fill_in 'password', :with => 'bbb123'
    #click_button 'Continue'
    expect(page).to have_content("It looks like you're already signed up")
  end

  it 'should not let me sign up with an existing account' do
    visit '/'
    click_link 'Sign Up'
    fill_in 'name', :with => 'phuong'
    fill_in 'username', :with => 'businessph@yahoo.com' + '\n'
    #fill_in 'password', :with => 'bbb123'
    #click_button 'Continue'
    expect(page).to have_content("It looks like you're already signed up")
  end

  xit 'should not let me in with an invalid account' do
    visit '/'
    click_link 'Sign In'
    click_button 'Sign In'
    expect(page).to have_content("Wrong email / password combination")
  end

end
