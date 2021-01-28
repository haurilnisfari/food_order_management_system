class Category < ApplicationRecord
    paginates_per 5
    has_many :menu_categories
    has_many :menu, through: :menu_categories

end