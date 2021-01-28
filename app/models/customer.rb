class Customer < ApplicationRecord
    paginates_per 5
    has_many :orders
end