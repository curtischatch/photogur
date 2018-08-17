class User < ApplicationRecord
  has_secure_password
  # will automatically add attr_accessor :password, :password_confirmation in your model for you
  # will take those values [password and password_confirmation] and encrypt them
end
