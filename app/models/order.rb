class Order < ActiveRecord::Base
	has_many :line_items, :dependent => :destroy
	STORES = ["ЦТиР 'МИР', Пр. Октября, 4/1", "Ост. 'ШКОЛА МВД', ул. Мубарякова, 10/1", "ост. 'ТАХИР И ЗУХРА'

ул. Революционная, 109 ", "ЦТиО 'ПРОСТОР', Жукова, 29","Ост. 'ВОСЬМИЭТАЖКА', ул. Ульяновых, 29", "Ост. 'ТЕАТР КУКОЛ', пр. Октября, 146/1" ]

  validates :name, :phone, :presence => true

  validates :store, :inclusion => STORES

    def add_line_items_from_cart(cart)
    cart.line_items.each do |item|
      item.cart_id = nil
      line_items << item
    end
  end
end
