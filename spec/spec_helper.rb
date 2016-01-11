require 'capybara/rspec'
require 'rubygems'
require 'bundler/setup'
require 'selenium-webdriver'
# require 'chromedriver/helper'
# require 'capybara/dsl'
# require 'faker'
# require './spec/features/signup_client/signup_client_actions'
# require './spec/features/signup_provider/signup_provider_actions'
# require './spec/features/admin/admin_actions'
# require './spec/features/nav_bar/nav_bar_actions'
# require './spec/features/login/login_actions'
# require './spec/features/home_page_body/home_page_body_actions'
# require './spec/features/home_page_footer/home_page_footer_actions'
# require './spec/features/sso/md_sighup_client_actions'
# require './spec/config/get_config'
# require 'faraday'
# require 'pry'

Capybara.default_driver = :selenium
Capybara.app_host = 'http://jenkins.btstaging.com/'
Capybara.run_server = false
#
# def get_specific_environment(environment)
#   if (File.exist?('./spec/config/secret.yml'))
#     puts '[INFO] Loading local credentials'
#     credentials = YAML.load_file('./spec/config/secret.yml')
#   else
#     puts '[INFO] Credentials are not specify'
#     credentials = { 'system_user' => 'local', 'password' => 'empty' }
#   end
#   system_user = credentials['system_user']
#   password    = credentials['password']
#
#   Capybara.current_session.driver.reset!
#   Capybara.app_host = 'https://'+system_user+':'+password+'@'+environment+'.btstaging.com'
# end
#
# def go_to_stage
#   #temporal solution to sso failing tests
#   if (File.exist?('./spec/config/secret.yml'))
#     puts '[INFO] Loading local credentials'
#     credentials = YAML.load_file('./spec/config/secret.yml')
#   else
#     puts '[INFO] Credentials are not specify'
#     credentials = { 'system_user' => 'local', 'password' => 'empty' }
#   end
#   system_user = credentials['system_user']
#   password    = credentials['password']
#
#   Capybara.current_session.driver.reset!
#   Capybara.app_host = 'https://'+system_user+':'+password+'@'+'www.'+'btstaging.com'
# end

# # Test configurations
# configurations = GetConfig.new
# os = configurations.get_os
# is_local = configurations.is_local
# browser = configurations.get_browser
# selenium_host = configurations.selenium_hub
# ###
# Capybara.default_driver = :selenium
# Capybara.app_host = configurations.get_url
# Capybara.run_server = false
# Capybara.default_wait_time = 10
# #Capybara.ignore_hidden_elements = false
#
# require 'pathname'
# class String
#   def to_b
#     to_s.match(/(true|yes|y|1)/i) != nil
#   end
# end


# if is_local.to_b
#
#   case browser
#
#     when 'chrome'
#
#       puts "[MESSAGE-ENV] Selected local:#{browser}"
#
#       Capybara.register_driver :selenium do |app|
#         Capybara::Selenium::Driver.new(app, :browser => :chrome)
#         #Capybara.javascript_driver = :chrome
#       end
#     when 'firefox'
#
#       Capybara.register_driver :selenium do |app|
#
#         profile = Selenium::WebDriver::Firefox::Profile.new
#         profile['dom.max_script_run_time'] = '60'
#         profile.secure_ssl = false
#         profile.assume_untrusted_certificate_issuer = false
#         Capybara::Selenium::Driver.new(app, :browser => :firefox, profile: profile)
#       end
#
#     else
#       puts "[MESSAGE-ENV] Selected local:#{browser}"
#
#       Capybara.register_driver :selenium do |app|
#         Capybara::Selenium::Driver.new(app, :browser => :chrome)
#         #Capybara.javascript_driver = :chrome
#
#       end
#
#   end
#
# else
#   puts "Going remote with #{browser}"
#
#
#   case browser
#     when 'firefox'
#       profile = Selenium::WebDriver::Firefox::Profile.from_name "default"
#       # profile['geolocation.default_content_setting'] = 1
#       #profile['geo.enabled'] = false
#       caps = Selenium::WebDriver::Remote::Capabilities.firefox :firefox_profile => profile
#       caps = Selenium::WebDriver::Remote::Capabilities.firefox
#       #caps.version = "32"
#       caps.platform = os.to_sym
#     when 'chrome'
#       puts "USING #{os} CHROME"
#       caps = Selenium::WebDriver::Remote::Capabilities.chrome
#       #caps.version = "7"
#       caps.platform = os.to_sym
#     when 'ie'
#       puts "USING  IE"
#       caps = Selenium::WebDriver::Remote::Capabilities.ie
#       #caps.version = "7"
#       caps.platform = os.to_sym
#     else
#       puts "You just making it up!"
#   end
#
#
#   Capybara.register_driver :selenium do |app|
#
#     Capybara::Selenium::Driver.new(app,
#                                    :browser => :remote,
#                                    :url => "http://#{selenium_host}/wd/hub",
#                                    :desired_capabilities => caps)
#   end
#
#
#
# # navigation helpers methdos
#
# def click_dass_21
#   (1..21).each do |i|
#     find("#choice-2-question-#{i}-dass").click
#   end
# end
#
# def click_holmes_rahe(num)
#   (0..4).each do |i|
#     execute_script "$(\".assessment-form .question-answer-pair\").each(function() {$(this).find(\".answers\").eq(Math.ceil(Math.random() * #{num})).find(\"label\").click();});"
#   end
# end
#
# def click_dass_21_1(num)
#   (0..4).each do |i|
#     execute_script "$(\".assessment-form .question-answer-pair\").each(function() {$(this).find(\".answers\").eq(Math.floor(Math.random() * #{num})).find(\"input\").click();});"
#   end
# end
#
# def click_holmes_rahe_1(num)
#   (0..4).each do |i|
#     execute_script "$(\".assessment-form .question-answer-pair\").each(function() {$(this).find(\".answers\").eq(Math.floor(Math.random() * #{num})).find(\"input\").click();});"
#   end
# end

def browser_back
  sleep 2
  page.evaluate_script('window.history.back()')
  sleep 2
end

def browser_forward
  page.evaluate_script('window.history.forward()')
end

def click_by_alt(alt)
  find("img[@alt='#{alt}']").click
end

def verify_content (verification_point)
  expect(page).to have_content verification_point
end

def verify_no_content (verification_point)
  expect(page).not_to have_content verification_point
end

def browser_maximize
  Capybara.current_session.driver.browser.manage.window.maximize
end

def click_similar_link_by_index_partial(linkName, index)
  all(:link, linkName, exact: false)[index].click
end

def click_similar_link_by_index(linkName, index)
  all(:link, linkName)[index].click
end

def click_similar_link_by_last(linkName)
  all(:link, linkName).last
end

def click_similar_button_by_last(buttonId)
  all(:button, buttonId).last.click
end

def click_similar_button_by_index(buttonId, index)
  all(:button, buttonId)[index].click
end

def select_from_dropdown(option, class_name_id)
  select(option, :from => class_name_id,:match => :first)
end

def select_text_in_table_by_table_id(table_id, text)
  execute_script("var tableRow = $(\"##{table_id} td\").filter(function() { return $(this).text() == \"#{text}\";}).closest(\"tr\");tableRow.trigger('click');")
end

def click_on_plain_text(by_tag, text)
  sleep 3
  execute_script("$(\"#{by_tag}:contains('#{text}')\").trigger(\"click\"); ")
end



def click_on_plain_text_first(by_tag, text)
  execute_script("$(\"#{by_tag}:contains('#{text}'):first\").trigger(\"click\"); ")
end

def click_on_plain_text_by_index(by_tag, text, index)
  execute_script("$(\"#{by_tag}:contains('#{text}')\").eq(#{index}).trigger(\"click\"); ")
end

def click_by_id(id)
  find(:id , "#{id}").click
end

def fill_form_js_by_id(id, value)
  execute_script("$(\"##{id}\").focus().val('#{value}').keyup()")
end

def get_current_date_time(format_time="%Y-%m-%d-%H-%M-%S")
  time = Time.new
  time.strftime(format_time).to_s
end

def get_current_date(format_time="%Y-%m-%d")
  date = Time.new
  date.strftime(format_time).to_s
end

def wait_element_run_command(web_element, command_code, seconds)

  for i in 0..seconds
    if body.include?(web_element)
      puts "Waiting #{web_element} to appear #{i} seconds"
      sleep 1
    else
      puts "Its took #{i} seconds to find #{web_element}"
      eval command_code

      break
    end
  end

end

def wait_element(web_element,  seconds)

  for i in 0..seconds
    if body.include?(web_element)
      puts "Waiting #{web_element} to appear #{i} seconds"
      sleep 1
    else
      puts "Its took #{i} seconds to find #{web_element}"

      break
    end
  end

end



def verify_content_in_html_body(text_content,  seconds)

  for i in 0..seconds
    if body.include?(text_content)
      puts "Waiting #{text_content} to appear #{i} seconds"
      sleep 1
      if i == seconds
        return false
        break
      end
    else
      puts "Its took #{i} seconds to find #{text_content}"
      return true
      break
    end

  end

end


def drag_drop(draggable, x_offset, y_offset)
  driver = page.driver.browser
  driver.action.drag_and_drop_by(draggable.native, x_offset, y_offset).perform
end

#Capybara will wait for the element to appear before trying to click. Note that match: :first is more brittle, because it will silently click on a different element if you introduce new elements which match.
def click_first_element(element)
# If you just want the first element
  page.find(element, match: :first).click
end

def scroll_bottom_page
  page.execute_script('window.scrollTo(0,100000)')
  sleep 2
end


def window_back
  page.evaluate_script('window.history.back()')
end

def browse_therapists_neb_medicaid
  find(:css, "#select2-provider_search_near-container").click
  sleep 1
  find(:css, "#providers-index > span > span > span.select2-search.select2-search--dropdown > input").set('Nebraska' + "\n")
  sleep 5
end

def browse_therapists_payment_medicaid
  sleep 2
  find(:css, "#select2-payment_type-container").click
  sleep 2
  find(:css, "#providers-index > span > span > span.select2-search.select2-search--dropdown > input").set('Medicaid Managed Care - Magellan NE' + "\n")
  sleep 2
end

def pause_for(seconds)
  if seconds != 0
    puts "[PAUSE WARNING] I have to pause due slow page for #{seconds}"
    sleep(seconds)
  end

end

def search_input_box(location)
  find(:xpath,"//*[@id=\"secondary-search-by-location\"]").set(location)
  #sleep 2
end

def search_button
  page.all(:link,'Search')[0].click
  #sleep 2
end

def search_button1
  sleep 2
  click_similar_button_by_index('Search',0)
  sleep 2
end

def switch_to_iframe(id)
  Capybara.current_session.driver.browser.switch_to.frame(id)
end

#Methods to schedule appointments
def add_note_on_schedule_appointments(note)
  fill_in '#appointment_note', :with => note
end

def add_participant_on_schedule_appointments(firstName,lastName,email)
  sleep 2
  client=firstName+lastName
  click_link('+ Add a participant to this session')
  find_by_id('select2-appointment_participants_attributes_0_observer_observer_id-container').click
  fill_in('.select2-search',:text => firstName)
  find('li.select2-results__option',:text => client).click
  fill_in 'observer[email]', with =>email
end

def search_participant_on_schedule_appointments(firstName,lastName)
  client=firstName+lastName
  click_link('+ Add a participant to this session')
  find_by_id('select2-appointment_participants_attributes_0_observer_observer_id-container').click
  find('li.select2-results__option',:text => client).click
end


def select_client_on_schedule_appointments(client)
  sleep 2
  find_by_id('select2-client_ids-container').click
  sleep 2
  find('li.select2-results__option',:text => client).click
  sleep 2
end

def select_provider_on_schedule_appointments(provider)
  sleep 2
  find_by_id('select2-provider_ids-container').click
  sleep 2
  find('li.select2-results__option',:text => provider).click
  sleep 2
end

def select_first_time_on_schedule_appointments
  sleep 2
  first('li.select-time > a').click
  sleep 2
end


def select_from_dropdown2(option, field)
  find("#select2-#{field}-container").click
  first("#select2-#{field}-results li", text: option).click
end

def scroll_select2(args)
  option = args[:option]
  field = args[:field]
  scroll = args[:scroll]

  scroll_to_selector "#select2-#{field}-container" if scroll

  find("#select2-#{field}-container").click
  find("#select2-#{field}-results li", text: option).click
end


def select2_single(option)
  find('.select2-selection--single').click
  find('li', text: "#{option}").click
end

def select2_find(field)
  find("#select2-#{field}-container")
end

def select2_list_options(field)
  find("#select2-#{field}-container").click
  page.all("#select2-#{field}-results li").map(&:text)
end


def scroll_to_button(button_text)
  execute_script "var $element = $(\"button:contains('#{button_text}')\"); if($element.length > 0) { $element[0].scrollIntoView(false); }"
end

def scroll_to_link(link_text, element_index = 0)
  execute_script "var $element = $(\"a:contains('#{link_text}')\"); if($element.length > 0) { $element[#{element_index}].scrollIntoView(false); }"
end

def scroll_to_selector(selector)
  execute_script "var $element = $('#{selector}'); if($element.length > 0) { $element[0].scrollIntoView(false); }"
end

def scroll_to_bottom
  execute_script 'window.scrollBy(0,10000)'
end

def wait_until(id)
  wait = Selenium::WebDriver::Wait.new(:timeout => 10) # seconds
  wait.until { (driver.find_element(:css => "##{id}")).click() }
end

def current_url
  driver.current_url
end

def current_path
  URI.parse(current_url).path
end

# Method to verify the url_path without the domain, e.g., for url 'https://btstaging.com/why' the path is just '/why'
def verify_url_path(path_text)
  expect(current_path).to eql(path_text)
end

def verify_element_has_default_value(element, value)
  expect(page).to have_selector("#{element}[placeholder='#{value}']")
end
