require './spec/spec_helper1'
feature "Jenkins job" do

  it 'qa5-admin-code-creation-web-ui-test' do
    visit '/'
    click_link 'log in'
    fill_in 'j_username', :with => 'phua'
    fill_in 'j_password', :with => 'bbb123'
    click_button 'log in'
    click_link 'qa5-admin-code-creation-web-ui-test'
    click_link 'Build Now'
    expect(page).to have_content("phuong hua")
  end

  it 'qa5-admin-code-explore-mobile-web-ui-test' do
    visit '/'
    click_link 'log in'
    fill_in 'j_username', :with => 'phua'
    fill_in 'j_password', :with => 'bbb123'
    click_button 'log in'
    click_link 'qa5-admin-code-explore-mobile-web-ui-test'
    click_link 'Build Now'
    expect(page).to have_content("phuong hua")
  end

  it 'qa5-code-explorer-v2-ROR' do
    visit '/'
    click_link 'log in'
    fill_in 'j_username', :with => 'phua'
    fill_in 'j_password', :with => 'bbb123'
    click_button 'log in'
    click_link 'qa5-code-explorer-v2-ROR'
    click_link 'Build Now'
    expect(page).to have_content("phuong hua")
  end

  it 'qa5-morp-web' do
    visit '/'
    click_link 'log in'
    fill_in 'j_username', :with => 'phua'
    fill_in 'j_password', :with => 'bbb123'
    click_button 'log in'
    click_link 'qa5-morp-web'
    click_link 'Build Now'
    expect(page).to have_content("phuong hua")
  end

  it 'qa5-rorportal-pum-web-ui-test' do
    visit '/'
    click_link 'log in'
    fill_in 'j_username', :with => 'phua'
    fill_in 'j_password', :with => 'bbb123'
    click_button 'log in'
    click_link 'qa5-rorportal-pum-web-ui-test'
    click_link 'Build Now'
    expect(page).to have_content("phuong hua")
  end

  it 'qa5-ruby-service-tests' do
    visit '/'
    click_link 'log in'
    fill_in 'j_username', :with => 'phua'
    fill_in 'j_password', :with => 'bbb123'
    click_button 'log in'
    click_link 'qa5-ruby-service-tests'
    click_link 'Build Now'
    expect(page).to have_content("phuong hua")
  end

  it 'qa5-sams-automation-ui-test' do
    visit '/'
    click_link 'log in'
    fill_in 'j_username', :with => 'phua'
    fill_in 'j_password', :with => 'bbb123'
    click_button 'log in'
    click_link 'qa5-sams-automation-ui-test'
    click_link 'Build Now'
    expect(page).to have_content("phuong hua")
  end

  it 'qa5-tesco-batches-automation' do
    visit '/'
    click_link 'log in'
    fill_in 'j_username', :with => 'phua'
    fill_in 'j_password', :with => 'bbb123'
    click_button 'log in'
    click_link 'qa5-tesco-batches-automation'
    click_link 'Build Now'
    expect(page).to have_content("phuong hua")
  end

  it 'qa5-time-checks-morp-web' do
    visit '/'
    click_link 'log in'
    fill_in 'j_username', :with => 'phua'
    fill_in 'j_password', :with => 'bbb123'
    click_button 'log in'
    click_link 'qa5-time-checks-morp-web'
    click_link 'Build Now'
    expect(page).to have_content("phuong hua")
  end

  ###QA7 jenkins test

  it 'qa7-admin-code-creation-web-ui-test' do
    visit '/'
    click_link 'log in'
    fill_in 'j_username', :with => 'phua'
    fill_in 'j_password', :with => 'bbb123'
    click_button 'log in'
    click_link 'qa7-admin-code-creation-web-ui-test'
    click_link 'Build Now'
    expect(page).to have_content("phuong hua")
  end

  it 'qa7-admin-code-exporer-mobile-web-ui-test' do
    visit '/'
    click_link 'log in'
    fill_in 'j_username', :with => 'phua'
    fill_in 'j_password', :with => 'bbb123'
    click_button 'log in'
    click_link 'qa7-admin-code-explore-mobile-web-ui-test'
    click_link 'Build Now'
    expect(page).to have_content("phuong hua")
  end

  it 'qa7-code-explorer-v2-ROR' do
    visit '/'
    click_link 'log in'
    fill_in 'j_username', :with => 'phua'
    fill_in 'j_password', :with => 'bbb123'
    click_button 'log in'
    click_link 'qa7-code-explorer-v2-ROR'
    click_link 'Build Now'
    expect(page).to have_content("phuong hua")
  end

  it 'qa7-morp-web' do
    visit '/'
    click_link 'log in'
    fill_in 'j_username', :with => 'phua'
    fill_in 'j_password', :with => 'bbb123'
    click_button 'log in'
    click_link 'qa7-morp-web'
    click_link 'Build Now'
    expect(page).to have_content("phuong hua")
  end

  it 'qa7-rorportal-pum-web-ui-test' do
    visit '/'
    click_link 'log in'
    fill_in 'j_username', :with => 'phua'
    fill_in 'j_password', :with => 'bbb123'
    click_button 'log in'
    click_link 'qa7-rorportal-pum-web-ui-test'
    click_link 'Build Now'
    expect(page).to have_content("phuong hua")
  end

  it 'qa7-ruby-service-tests' do
    visit '/'
    click_link 'log in'
    fill_in 'j_username', :with => 'phua'
    fill_in 'j_password', :with => 'bbb123'
    click_button 'log in'
    click_link 'qa7-ruby-service-tests'
    click_link 'Build Now'
    expect(page).to have_content("phuong hua")
  end

  it 'qa7-sams-automation-ui-test' do
    visit '/'
    click_link 'log in'
    fill_in 'j_username', :with => 'phua'
    fill_in 'j_password', :with => 'bbb123'
    click_button 'log in'
    click_link 'qa7-sams-automation-ui-test'
    click_link 'Build Now'
    expect(page).to have_content("phuong hua")
  end

  it 'qa7-tesco-batches-automation' do
    visit '/'
    click_link 'log in'
    fill_in 'j_username', :with => 'phua'
    fill_in 'j_password', :with => 'bbb123'
    click_button 'log in'
    click_link 'qa7-tesco-batches-automation'
    click_link 'Build Now'
    expect(page).to have_content("phuong hua")
  end

  it 'qa7-time-checks-morp-web' do
    visit '/'
    click_link 'log in'
    fill_in 'j_username', :with => 'phua'
    fill_in 'j_password', :with => 'bbb123'
    click_button 'log in'
    click_link 'qa7-time-checks-morp-web'
    click_link 'Build Now'
    expect(page).to have_content("phuong hua")
  end

end
