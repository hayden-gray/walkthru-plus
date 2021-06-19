require "test_helper"

class UserTest < ActiveSupport::TestCase
  test 'user has encrypted password' do
    user = User.create!(username: 'frodo', password: 'bag-end')
    assert user.password_digest != 'bag-end'
  end
end
