require './spec/spec_helper'
feature "Sign in page for MDLIVE" do

  context "A valid account" do

    it 'should be allowed to login' do
      visit ''

      find("a.showlogin").click

      fill_in 'login[email]', :with => 'sif123'
      fill_in 'login[password]', :with => 'mdlive789'

      click_button "Sign In"
      expect(page).to have_content("My Health")
    end

    it 'should have the correct content on the dashboard' do
      visit ''

      find("a.showlogin").click

      fill_in 'login[email]', :with => 'sif123'
      fill_in 'login[password]', :with => 'mdlive789'

      click_button "Sign In"
      expect(page).to have_content("See a Doctor")
      expect(page).to have_content("your Health")
    end
  end
  # it 'should not let me in with an invalid account' do
  #   visit 'users/sign_in'
  #
  #   fill_in 'user[email]', :with => 'a@a.com'
  #   fill_in 'user[password]', :with => 'asdfasdf'
  #
  #   click_button "Log in"
  #   expect(page).to have_content("Invalid email or password")
  # end

end
