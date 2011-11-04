Given /^I have a user "([^"]*)" with password "([^"]*)"$/ do |email, password|
  @user = User.create(:email => email, :password => password, :password_confirmation => password)
  @user.confirm!
end
