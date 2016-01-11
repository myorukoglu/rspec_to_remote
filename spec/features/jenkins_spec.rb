require './spec/spec_helper'
require './spec/features/jenkins_actions.rb'

feature "Signing in to jenkins" do

  before(:each) do
    visit '/'
    browser_maximize
  end

  it 'login add user ' do
    login_admin
    create_user_method('zphncarmona','zphncarmona123$','zphncarmona123$','zphNestor zphCarmona','zphncarmona@mdlive.com')
    verify_content('Configure Global Security')
  end

end
###