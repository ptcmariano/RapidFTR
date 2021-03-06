Given /^I am logged in$/ do
  step "there is a User"
  step "I am on the login page"
  step "I fill in \"#{User.first.user_name}\" for \"user_name\""
  step "I fill in \"123\" for \"password\""
  step "I press \"Log in\""
end

Given /^I am logged in as an admin$/ do
  step "there is a admin"
  step "I am on the login page"
  step "I fill in \"admin\" for \"user_name\""
  step "I fill in \"123\" for \"password\""
  step "I press \"Log in\""
end

Given /^I am logged in as "(.+)"/ do |user_name|
  step "I am on the login page"
  step "I fill in \"#{user_name}\" for \"user_name\""
  step "I fill in \"123\" for \"password\""
  step "I press \"Log in\""
end


Given /there is a User/ do
  unless @user
    step "a user \"mary\" with a password \"123\" and \"Access all data\" permission"
  end
end

Given /there is a User with "(.+)" permission/ do |permission|
  step "a user \"mary\" with a password \"123\" and \"#{permission}\" permission"
end

Given /^I am logged in as a User with "(.+)" permission$/ do |permission|
  step "there is a User with \"#{permission} permission\""
  step "I am on the login page"
  step "I fill in \"#{User.first.user_name}\" for \"user_name\""
  step "I fill in \"123\" for \"password\""
  step "I press \"Log in\""
end

Given /^there is a admin$/ do
	step "a admin \"admin\" with a password \"123\""
end