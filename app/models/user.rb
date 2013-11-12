class User < ActiveRecord::Base
  has_many :ideas

  validates :first_name, length: {maximum: 40}
  validates :last_name, length: {maximum: 40}

end
