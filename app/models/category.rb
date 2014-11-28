class Category < ActiveRecord::Base
  has_many :products

  validates :name, uniqueness: true
  #validates_uniqueness_of :name
end
