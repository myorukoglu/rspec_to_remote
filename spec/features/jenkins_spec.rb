require './spec/spec_helper'
feature "Signing in to test" do

  it '' do
    visit '/'
    click_link 'log in'
    fill_in 'j_username', :with => 'phua'
    fill_in 'j_password', :with => 'bbb123'
    click_button 'log in'
    click_link 'qa5-admin-code-creation-web-ui-test'
    click_link 'Build Now'
    expect(page).to have_content("phuong hua")
  end

  it '' do
    visit '/'
    click_link 'log in'
    fill_in 'j_username', :with => 'phua'
    fill_in 'j_password', :with => 'bbb123'
    click_button 'log in'
    click_link 'qa5-admin-code-explore-mobile-web-ui-test'
    click_link 'Build Now'
    expect(page).to have_content("phuong hua")
  end

  it '' do
    visit '/'
    click_link 'log in'
    fill_in 'j_username', :with => 'phua'
    fill_in 'j_password', :with => 'bbb123'
    click_button 'log in'
    click_link 'qa5-code-explorer-v2-ROR'
    click_link 'Build Now'
    expect(page).to have_content("phuong hua")
  end

  it '' do
    visit '/'
    click_link 'log in'
    fill_in 'j_username', :with => 'phua'
    fill_in 'j_password', :with => 'bbb123'
    click_button 'log in'
    click_link 'qa5-morp-web'
    click_link 'Build Now'
    expect(page).to have_content("phuong hua")
  end

  it '' do
    visit '/'
    click_link 'log in'
    fill_in 'j_username', :with => 'phua'
    fill_in 'j_password', :with => 'bbb123'
    click_button 'log in'
    click_link 'qa5-rorportal-pum-web-ui-test'
    click_link 'Build Now'
    expect(page).to have_content("phuong hua")
  end

  it '' do
    visit '/'
    click_link 'log in'
    fill_in 'j_username', :with => 'phua'
    fill_in 'j_password', :with => 'bbb123'
    click_button 'log in'
    click_link 'qa5-ruby-service-tests'
    click_link 'Build Now'
    expect(page).to have_content("phuong hua")
  end

  it '' do
    visit '/'
    click_link 'log in'
    fill_in 'j_username', :with => 'phua'
    fill_in 'j_password', :with => 'bbb123'
    click_button 'log in'
    click_link ' qa5-sams-automation-ui-test'
    click_link 'Build Now'
    expect(page).to have_content("phuong hua")
  end

  it '' do
    visit '/'
    click_link 'log in'
    fill_in 'j_username', :with => 'phua'
    fill_in 'j_password', :with => 'bbb123'
    click_button 'log in'
    click_link 'qa5-tesco-batches-automation'
    click_link 'Build Now'
    expect(page).to have_content("phuong hua")
  end

  it '' do
    visit '/'
    click_link 'log in'
    fill_in 'j_username', :with => 'phua'
    fill_in 'j_password', :with => 'bbb123'
    click_button 'log in'
    click_link 'qa5-time-checks-morp-web'
    click_link 'Build Now'
    expect(page).to have_content("phuong hua")
  end



























end
