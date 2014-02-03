class Article < ActiveRecord::Base
  has_many :comments, :dependent => :destroy
  has_one :author, :dependent => :destroy

  accepts_nested_attributes_for :author

  validates_presence_of :title, :content,
                        :message => ' - polozky nemozu byt prazdne !!!'

end
