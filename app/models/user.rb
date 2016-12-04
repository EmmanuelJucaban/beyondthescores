
class User < ActiveRecord::Base
  # before the email is saved in database, it  is lowercased and then saved
  before_save { self.username = username.downcase }

  validates :username, presence: true,
             uniqueness: {case_sensitive: false},
             length: {minimum: 3, maximum: 25}

  has_secure_password

end
