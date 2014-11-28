class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :reviews

  # Seems like it's rails 2 way o.O
  #validates_presence_of :price, :title, :description
  #validates_numericality_of :price

  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true, :format => { :with => /\A\d+(?:\.\d{0,2})?\z/ },
            :numericality => {:greater_than => 0}

  def average_rating
    sum = 0.0
    reviews.each do |review|
      sum += review.rating
    end
    return sum / reviews.count
  end

end
