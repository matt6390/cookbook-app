class User < ApplicationRecord
  has_secure_password #this line of code must be at the very top, and if we are ever to foget what should be written here, it is documented in the GEMFILE file
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
end
