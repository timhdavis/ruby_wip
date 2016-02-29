class Profile < ActiveRecord::Base
  has_many :messages
  has_many :requirements
end
