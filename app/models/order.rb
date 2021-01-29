class Order < ApplicationRecord
    paginates_per 5
    belongs_to :customer
    has_many :order_line

    def self.search(search)
      if search
        Order.where("name LIKE ?", "%#{search}%")
      else
        Order.all
      end
    end
end