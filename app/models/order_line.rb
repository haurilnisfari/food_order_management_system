class OrderLine < ApplicationRecord
  paginates_per 5
  belongs_to :order

  def self.search(search)
    if search
      Order.where("name LIKE ?", "%#{search}%")
    else
      Order.all
    end
  end
end