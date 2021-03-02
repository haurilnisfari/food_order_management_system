class Order < ApplicationRecord
    paginates_per 5
    has_many :order_lines, dependent: :destroy
    belongs_to :customer
    accepts_nested_attributes_for :order_lines, allow_destroy: true, reject_if: proc { |att| att['menu_item_id'].blank? }

    def self.search(search)
      if search
        Order.where("name LIKE ?", "%#{search}%")
      else
        Order.all
      end
    end

    def self.get_order_name
      pre = "Order"
      d = Time.now
      date = Time.now.strftime("%d-%m-%Y")
      if Order.where(created_at: d.beginning_of_day..d.end_of_day).blank?
        i = '%03i' % 1
      else
        last_order_name = Order.last.name
        array = last_order_name.split('/')
        num = array[1].to_i
        i = '%03i' %(num + 1)
      end
      order_name = pre + "/" + i + "/" + date
      return order_name
    end
end



# Order/001/04-02-2012

# search order hari itu, kalo belum ada order,kasih nilai 001

# kalo ada order cari yg last order. diambil order name. 
# di split berdasarkan / ambil element ke 2 ubah ke integer, 
# tambah 1, ubah ke sting lagi trus format ke tambah sama Order dan date hari itu