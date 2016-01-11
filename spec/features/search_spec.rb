require './spec/spec_helper'
require './spec/features/search_actions.rb'

feature "Signing in to" do

  before(:each) do
    visit ''
    Capybara.current_session.driver.browser.manage.window.maximize
  end

  ###get_config.rb --
  ###config.yml, remove second stage
  ###admin.spec.rb, remove zyx
  # fill_in 'login_username', :with => 'johhnyboy_'
  # fill_in 'login_password', :with => 'neddy6'

  xit 'jenkins qa' do
    fill_in 'user-signin', :with => 'ph'
    fill_in 'pass-signin', :with => ''
    click_button 'signin-button'
    sleep 10
    visit 'http://jenkins.btstaging.com/view/QA/'
    sleep 10
    find('.icon-clock')[0].click
    sleep 1
    find('.icon-clock')[1].click
    sleep 5
    expect(page).to have_content('Idle')
  end

  it 'zyx' do
    sign_in_method('prisoft123', 'pri123$')
    quick_match
    loop(200)
    #card_action_like_50
    expect(page).to have_content('Quickmatch')
  end

end
#