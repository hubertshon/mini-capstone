class Product < ApplicationRecord
  
  validates :name, presence: true, length: { in: 1...100 }, uniqueness: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :description,  length: { in: 10...500 }

  def is_discounted?
    if price < 10
      return true
    else
      false
    end
  end

  def tax
    return (price * 0.090).round(2)
  end

  def total
    return tax + price
  end

  belongs_to :supplier
  has_many :images

end
