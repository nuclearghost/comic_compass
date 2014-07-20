class Shop < ActiveRecord::Base
  belongs_to :user
  validates_formatting_of :zip, using: :us_zip
  validates_formatting_of :email, using: :email
end
