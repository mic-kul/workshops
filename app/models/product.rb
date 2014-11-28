class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :reviews

  validates_presence_of :price, :title, :description
  validates_numericality_of :price

  def average_rating
    sum = .0
    reviews.each do |review|
      sum += review.rating
    end
    return sum / reviews.count
  end

end
