class OrderLine < ApplicationRecord
  paginates_per 5
  belongs_to :order, optional: true
end