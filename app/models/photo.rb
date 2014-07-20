class Photo < ActiveRecord::Base
  belongs_to :shop
  validates_formatting_of :url, using: :url
end
