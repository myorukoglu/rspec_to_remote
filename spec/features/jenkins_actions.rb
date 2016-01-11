##
def user(user)
  fill_in 'j_username', :with => user
end

def password(password)
  fill_in 'j_password', :with => password
end

def login_button
  click_similar_button_by_index('log in', 0)
end

def login_user(un, pw)
  user(un)
  password(pw)
  login_button
end

def manage_jenkins
  click_similar_link_by_index('Manage Jenkins', 0)
end

def manage_user
  click_similar_link_by_index('Manage Users', 0)
end

def create_user
  click_similar_link_by_index('Create User', 0)
end

def create_user_username(user)
  fill_in 'username', :with => add_user = user
  add_user
end

def create_user_password(password)
  fill_in 'password1', :with => password
end

def create_user_confirm_password(password)
  fill_in 'password2', :with => password
end

def create_user_full_name(full_name)
  fill_in 'fullname', :with => full_name
end

def create_user_email_address(email_address)
  fill_in 'email', :with => email_address
end

def create_user_sign_up_button
  click_similar_button_by_index('Sign up', 0)
end

def configure_global_security
  click_similar_link_by_index('Configure Global Security', 0)
  sleep 4
end

def user_to_add(add_new_user, index)
  all(:input, text, exact: false)[index].set(add_new_user)
end

def create_user_method(un, pw, confirmpw, name, email)
  manage_jenkins
  manage_user
  create_user
  create_user_username(un)
  create_user_password(pw)
  create_user_confirm_password(confirmpw)
  create_user_full_name(name)
  create_user_email_address(email)
  create_user_sign_up_button

  manage_jenkins
  configure_global_security
  scroll_bottom_page
  user_group_to_add(un)
  configure_global_security_add
  configure_global_security_apply

  puts
  puts "add and set jenkins permissions email this to user"
  puts

  puts "

Hello,

Here are your Jenkins credentials.  You should be able to login, as long as your IP address is on our white list.

username: #{un}
password: #{pw}
name: #{name}
email: #{email}

http://jenkins.btstaging.com/

Thank you for your time and have a great day.


"
end

def user_group_to_add(un)
  find("input[id^='id'][id$='text']").set(un)
end

def configure_global_security_add
  click_similar_button_by_index('Add', 0)
end

def configure_global_security_apply
  sleep 2
  click_similar_button_by_index('Apply', 0)
  sleep 2
end

def configure_global_security_save
  sleep 2
  click_similar_button_by_index('Save', 0)
  sleep 2
end
































































































def login_admin
  login_user('ph', '')
end