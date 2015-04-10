class ChangeImageTypeForItem < ActiveRecord::Migration
  def change
  	change_column :items, :image, :attachment
  end
end
