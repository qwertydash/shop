class LineItem < ActiveRecord::Base
	belongs_to :item
	belongs_to :cart
	belongs_to :order

	  def total_price

    item.price * quantity

  end
end
