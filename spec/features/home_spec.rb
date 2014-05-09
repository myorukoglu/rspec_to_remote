require './spec/spec_helper'

feature "Signing in to Directly" do

    it 'land on home page' do
      visit '/'
      click_link 'Log In'
      click_link 'directly'
      expect(page).to have_content('EXPERT CROWDSERVICE')
    end

    it 'should land on log in page' do
      visit '/'
      click_link 'Log In'
      expect(page).to have_content('Log in to your Directly account')
    end

    it 'should land on sign up page' do
      visit '/'
      click_link 'Sign Up'
      expect(page).to have_content('Sign up for Directly')
    end

    it 'should land on facebook pop up' do
      visit '/'
      click_link 'Connect'
      page.driver.browser.switch_to().window(page.driver.browser.window_handles.last)
      fill_in 'email', :with => 'qaiphone4yotta@gmail.com'
      fill_in 'pass', :with => 'yotta123'
      click_button 'Log In'
      expect(page).to have_content('Directly will receive the following info:')
    end

    it 'should land on company page' do
      visit '/'
      click_link 'Company'
      expect(page).to have_content('Company Info')
    end

    it 'should land on browse page' do
      visit '/'
      click_link 'Browse'
      expect(page).to have_content('All questions')
    end

    it 'should land on blog page' do
      visit '/'
      click_link 'Blog'
      page.driver.browser.switch_to().window(page.driver.browser.window_handles.last)
      expect(page).to have_content('DIRECTLY BLOG')
    end

    it 'should land on business Business Solutions page' do
      visit '/'
      page.all(:link,'Business Solutions')[0].click
      expect(page).to have_content('Insert a crowdservice layer in your support stack')
    end

    it 'should land on learn more page' do
      visit '/'
      click_link 'Learn more'
      expect(page).to have_content('Insert a crowdservice layer in your support stack')
    end

    it 'should navigate through customer testimonials' do
      visit '/'
      click_link 'Next'
      sleep 2
      click_link 'Next'
      sleep 2
      click_link 'Previous'
      sleep 2
      expect(page).to have_content("very clear and i'm a baby boomer")
    end

    it 'should land on learn more about Directly page' do
      visit '/'
      click_link 'Learn more about Directly'
      expect(page).to have_content('Insert a crowdservice layer in your support stack')
    end

    it 'should land on company info page' do
      visit '/'
      click_link 'Company Info'
      expect(page).to have_content('Directly delivers instant access to a network of qualified experts, for a personalized customer experience that scales as a company grows.')
    end

    it 'should land on business solutions page' do
      visit '/'
      page.all(:link,'Business Solutions')[1].click
      expect(page).to have_content('Insert a crowdservice layer in your support stack')
    end

    it 'should land on become an expert page' do
      visit '/'
      click_link 'Become an Expert'
      expect(page).to have_content('Join an independent community of experts helping people in their own free time.')
    end

    it 'should land on terms page' do
      visit '/'
      click_link 'Terms'
      expect(page).to have_content('Insidr, Inc. (referred to as "Insidr", "we", "us", "our" and other similar pronouns)')
    end

    it 'should land on privacy page' do
      visit '/'
      click_link 'Privacy'
      expect(page).to have_content('Privacy Policy / Your California Rights')
    end

    it 'should land on help page' do
      visit '/'
      click_link 'Help'
      expect(page).to have_content('Want expert help with Directly questions?')
    end

    it 'should let me in with a valid account' do
      visit '/'
      click_link 'Log In'
      fill_in 'j_username', :with => 'businessph@yahoo.com'
      fill_in 'j_password', :with => 'bbb123'
      click_button 'Continue'
      expect(page).to have_content("Welcome to Directly")
    end

    it 'should not let me sign up with an existing account' do
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
      fill_in 'username', :with => ('businessph@yahoo.com' + "\n")
      #fill_in 'password', :with => 'bbb123'
      #click_button 'Continue'
      expect(page).to have_content("It looks like you're already signed up")
    end

    it 'should not let me in with an invalid account' do
      visit '/'
      click_link 'Log In'
      click_button 'Continue'
      expect(page).to have_content("Wrong email / password combination")
    end

  end
