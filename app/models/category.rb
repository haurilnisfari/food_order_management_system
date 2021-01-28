class Category < ApplicationRecord
    paginates_per 5
    has_many :menu_categories
    has_many :menu, through: :menu_categories

    def self.search(search)
        if search
          Category.where("name LIKE ?", "%#{search}%")
        else
          Category.all
        end
    end
end