class Article < ActiveRecord::Base
  has_many :comments
  has_one :author
  accepts_nested_attributes_for :author

end
