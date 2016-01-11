def sign_in
  click_link 'Sign in'
end

def login(un, pw)
  fill_in 'login_username', :with => un
  fill_in 'login_password', :with => pw
end

def sign_in_button
  click_button 'sign_in_button'
  sleep 4
end

def sign_in_method(un1,pw1)
  sign_in
  login(un1,pw1)
  sign_in_button
end

def quick_match
  click_link 'Quickmatch'
end

def card_actions_like
  find('.cardactions-action--like').click
  sleep 4
end

def loop(times_to_run)
  for x in 1..times_to_run do
    card_actions_like
  end
end

def card_action_like_50
  card_actions_like
  card_actions_like
  card_actions_like
  card_actions_like
  card_actions_like
  card_actions_like
  card_actions_like
  card_actions_like
  card_actions_like
  card_actions_like
  card_actions_like
  card_actions_like
  card_actions_like
  card_actions_like
  card_actions_like
  card_actions_like
  card_actions_like
  card_actions_like
  card_actions_like
  card_actions_like
  card_actions_like
  card_actions_like
  card_actions_like
  card_actions_like
  card_actions_like
  card_actions_like
  card_actions_like
  card_actions_like
  card_actions_like
  card_actions_like
  card_actions_like
  card_actions_like
  card_actions_like
  card_actions_like
  card_actions_like
  card_actions_like
  card_actions_like
  card_actions_like
  card_actions_like
  card_actions_like
  card_actions_like
  card_actions_like
  card_actions_like
  card_actions_like
  card_actions_like
  card_actions_like
  card_actions_like
  card_actions_like
  card_actions_like
  card_actions_like
end

#########################################