class CombineItemsInCart < ActiveRecord::Migration
  def change
  	    # replace multiple items for a single product in a cart with a single item

    Cart.all.each do |cart|

      # count the number of each product in the cart

      sums = cart.line_items.group(:item_id).sum(:quantity)

 

      sums.each do |item_id, quantity|

        if quantity > 1

          # remove individual items

          cart.line_items.where(:item_id=>item_id).delete_all

 

          # replace with a single item

          item = cart.line_items.build(:item_id=>item_id)

          item.quantity = quantity

          item.save!

        end

      end

    end
  end

  
end
