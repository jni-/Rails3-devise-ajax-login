Feature: Home page

	@javascript
	Scenario: I can login using ajax successfully
		Given I have a user "jni.test@test.com" with password "somepass"
		When I go to the homepage
		And I fill in "user[email]" with "jni.test@test.com"
		And I fill in "user[password]" with "somepass"
		And I press "Sign in"
		Then I should see "Welcome back, jni.test@test.com"

	@javascript
	Scenario: Login failure message appears when failure occurs
		When I go to the homepage
		And I fill in "user[email]" with "jni.test@test.com"
		And I fill in "user[password]" with "somepass"
		And I press "Sign in"
		Then I should see "Login failed"
