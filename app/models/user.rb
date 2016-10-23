class User < ApplicationRecord

  has_many :interactions
  has_many :contacts

end