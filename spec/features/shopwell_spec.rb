require './spec/spec_helper2'
feature "shopwell" do

  it 'sw signin' do
    visit '/'
    click_link 'Sign In'
    fill_in 'j_username', :with => 'qaiphone4yotta@gmail.com'
    fill_in 'j_password', :with => 'yotta123'
    click_button 'Sign In'
    #click_link 'qa5-admin-code-creation-web-ui-test'
    #click_link 'Build Now'
    expect(page).to have_content('Account Settings')
  end

end
