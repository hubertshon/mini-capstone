class Product < ApplicationRecord

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
end
