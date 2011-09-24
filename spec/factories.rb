# By using the symbol ':user', we get Factory Girl to simulate the User model.
Factory.define :user do |user|
  user.first_name                  "Michael"
  user.last_name                  "Hartl"
  user.email_id                 "mhartl@example.com"
  user.hashed_password              "foobar"
  user.hashed_password_confirmation "foobar"
end