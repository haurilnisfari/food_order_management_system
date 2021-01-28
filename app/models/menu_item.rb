class MenuItem < ApplicationRecord
    paginates_per 5
    has_many :menu_categories
    has_many :categories, through: :menu_categories

    def self.search(search)
      if search
        MenuItem.where("name LIKE ?", "%#{search}%")
      else
        MenuItem.all
      end
    end
end
  